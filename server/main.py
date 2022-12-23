from flask import Flask, render_template
from controllers.affichage_cycle import affichage_cycle
from controllers.affichage_planning_after import affichage_planning_after
from controllers.affichage_attestation import affichage_attestation
from controllers.relever_note import affichage_relever_note
import pandas as pd
from xml.etree.ElementTree import Element, SubElement, tostring
from lxml import etree
from flask import Response

app = Flask(__name__, template_folder='templates')

@app.route('/affichage', methods=['GET'])
def export_to_xml():
    # Read the Excel file into a Pandas DataFrame
    df = pd.read_excel('C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\server\\data_excel\\affichage.xlsx')

    # Create the root element and add the DOCTYPE declaration
    root = etree.Element('notes')
    root.addprevious(etree.PI('DOCTYPE', 'notes SYSTEM "notes.dtd"'))

    # Iterate through the rows in the DataFrame and create a 'note' element for each row
    for _, row in df.iterrows():
        note = etree.SubElement(root, 'note')
        etree.SubElement(note, 'CNE').text = str(row['CNE'])
        etree.SubElement(note, 'FirstName').text = row['FirstName']
        etree.SubElement(note, 'LastName').text = row['LastName']
        etree.SubElement(note, 'ClassName').text = row['ClassName']
        etree.SubElement(note, 'ModuleName').text = row['ModuleName']
        etree.SubElement(note, 'NoteElement').text = str(row['NoteElement'])

    # Write the XML elements to a file
    with open('C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\affiche_des_notes\\Ginf2_Notes.xml', 'wb') as f:
        f.write(etree.tostring(root, pretty_print=True))

    # Return a response to the client with the file as an attachment
    return Response(
        etree.tostring(root, pretty_print=True),
        mimetype='text/xml',
        headers={
            'Content-Disposition': 'attachment;filename=data.xml'
        }
    )


@app.route('/planning_after')
def planning_after():
    affichage_planning_after()
    return render_template('planning_after.html', template_folder='templates')


@app.route('/attestation')
def attestation():
    affichage_attestation()
    return render_template('attestation.html', template_folder='templates')

@app.route('/relever_note')
def relever_note():
        affichage_relever_note()
        return render_template('relever_note.html', template_folder='templates')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3003, debug=True)
