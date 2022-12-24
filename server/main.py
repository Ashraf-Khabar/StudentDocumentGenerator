from flask import Flask, render_template
from controllers.affichage_cycle import affichage_cycle
from controllers.affichage_planning_after import affichage_planning_after
from controllers.affichage_attestation import affichage_attestation
from controllers.relever_note import affichage_relever_note
import pandas as pd
from xml.etree.ElementTree import Element, SubElement, tostring
from lxml import etree
from flask import Response
from lxml.builder import E
import lxml.builder
import lxml.etree

app = Flask(__name__, template_folder='templates')

@app.route('/affichage', methods=['GET'])
def export_to_xml():
    # Read the Excel file into a Pandas DataFrame
    df = pd.read_excel('C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\server\\data_excel\\affichage.xlsx')

    # Create the root element and add the DOCTYPE declaration
    # root = etree.XML('<?xml version="1.0"?><notes></notes>')
    # root.addprevious(etree.PI('DOCTYPE', 'notes SYSTEM "notes.dtd"'))

    # Iterate through the rows in the DataFrame and create a 'note' element for each row
    root = lxml.builder.E.notes(
        # doctype='<!DOCTYPE notes SYSTEM "notes.dtd">',
        *[
            E.note(
                E.CNE(str(row['CNE'])),
                E.FirstName(row['FirstName']),
                E.LastName(row['LastName']),
                E.ClassName(row['ClassName']),
                E.ModuleName(row['ModuleName']),
                E.NoteElement(str(row['NoteElement']))
            ) for _, row in df.iterrows()
        ]
    )

    # Serialize the XML tree to a string using the 'tostring' function from the 'lxml.etree' module
    xml_str = etree.tostring(root, pretty_print=True).decode('utf-8')

    # Write the XML string to a file
    with open(
            'C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\affiche_des_notes\\Ginf2_Notes.xml',
            'w', encoding='utf-8') as f:
        f.write(xml_str)

    # Return a response to the client with the file as an attachment
    return Response(
        xml_str,
        mimetype='text/xml',
        headers={
            'Content-Disposition': 'attachment;filename=data.xml'
        }
    )


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3003, debug=True)
