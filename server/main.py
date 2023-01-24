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


@app.route('/studentcard', methods=['GET'])
def export_to_xml():
    # Read the Excel file into a Pandas DataFrame
    df = pd.read_excel('C:studentcard.xlsx')

    # Create the root element and add the DOCTYPE declaration
    root = etree.Element('card', xmlns='http://studentcard.org')

    # Add the logoUae element
    logoUae = etree.SubElement(root, 'logoUae', uri='logoUae.png')

    # Add the nameUae element
    nameUae = etree.SubElement(root, 'nameUae')
    nameUae.text = df['nameUae']

    # Add the nameSchool element
    nameSchool = etree.SubElement(root, 'nameSchool')
    nameSchool.text = df['nameSchool']

    # Add the villeSchool element
    villeSchool = etree.SubElement(root, 'villeSchool')
    villeSchool.text = df['villeSchool']

    # Add the logoEnsa element
    logoEnsa = etree.SubElement(root, 'logoEnsa', uri='ensat.png')

    # Add the title element
    title = etree.SubElement(root, 'title')
    title.text = 'CARTE D\'ETUDIANT'

    # Add the lastName element
    lastName = etree.SubElement(root, 'lastName')
    lastName.text = df['lastName']

    # Add the firstName element
    firstName = etree.SubElement(root, 'firstName')
    firstName.text = df['firstName']

    # Add the codeApoge element
    codeApoge = etree.SubElement(root, 'codeApoge')
    codeApoge.text = df['codeApoge']

    # Add the photo element
    photo = etree.SubElement(root, 'photo', uri='Achraf_KHABAR.png')

    # Add the scanBar element
    scanBar = etree.SubElement(root, 'scanBar', uri='scanbar.png')

    # Add the footer element
    footer = etree.SubElement(root, 'footer')
    footer.text = 'Première Inscription : 2019 / 2020'

    # Serialize the XML tree to a string using the 'tostring' function from the 'lxml.etree' module
    xml_str = etree.tostring(root, pretty_print=True).decode('utf-8')

    # Write the XML string to a file
    with open(
            'C:studentcard.xml',
            'w', encoding='utf-8') as f:
        f.write(xml_str)

    # Return a response to the client with the file as


@app.route('/groupeTp', methods=['GET'])
def export_to_xml_new():
    # Read the Excel file into a Pandas DataFrame
    df = pd.read_excel('C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\server\\data_excel\\groupeTp.xlsx')

    # Create the root element and add the DOCTYPE declaration
    root = lxml.builder.E.listeEtudiants(
        *[
            E.Etudiant(
                E.Nom(row['FirstName']),
                E.Prenom(row['LastName']),
                CNE=str(row['CNE']),
                id=str(row.name+1)
            ) for _, row in df.iterrows()
        ]
    )

    # Serialize the XML tree to a string using the 'tostring' function from the 'lxml.etree' module
    xml_str = etree.tostring(root, pretty_print=True).decode('utf-8')

    # Write the XML string to a file
    with open(
            'C:GroupeTp.xml',
            'w', encoding='utf-8') as f:
        f.write(xml_str)

    # Return a response to the client with the file as an attachment
    return Response(
        xml_str,
        mimetype='text/xml',
        headers={
            'Content-Disposition': 'attachment;filename=data_new.xml'
        }
    )


@app.route('/releverDeNote', methods=['GET'])
def releverDeNote(codeModule=None):
    # Read the Excel file into a Pandas DataFrame
    df = pd.read_excel('C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\server\\data_excel\\ReleveNotes.xlsx')

    # Create the root element 
    root = lxml.builder.E.ReleveN(
         E.logoEnsa(uri="ensat.png"),
         E.logoUae(uri="logoUae.jpeg"),
         E.classe(df.classe[0]),
         E.annee(str(df.annee[0])),
         E.nomEtud(df.nomEtud[0]),
         E.prenomEtud(df.prenomEtud[0]),
         E.CNE(str(df.CNE[0])),
         E.Modules(*[
              E.Module(
                  E.codeModule(c=row.codeModule),
                  E.designationModule(row.designationModule),
                  E.AnneeModule(a=str(row.AnneeModule)),
                  E.NoteModule(row.NoteModule),
                  E.Matieres(*[
                      E.Matiere(
                          E.DesignationMatiere(row.DesignationMatiere),
                          E.NoteMatiere(row.NoteMatiere)
                      ) for _, row in df[df.codeModule == codeModule].iterrows()
                  ]))
              for _, row in df.iterrows()
         ])
    )

    # Serialize the XML tree to a string using the 'tostring' function from the 'lxml.etree' module
    xml_str = etree.tostring(root, pretty_print=True).decode('utf-8')

    # Write the XML string to a file
    with open(
            'C:\\Users\\ashraf\\Documents\\GitHub\\PDF-school-generator-from-XML-files-project\\affiche_des_notes\\ReleveNotes.xml',
            'w', encoding='utf-8') as f:
        f.write(xml_str)

    # Return a response to the client with the file as an attachment
    return Response(
        xml_str,
        mimetype='text/xml',
        headers={
            'Content-Disposition': 'attachment;filename=ReleveNotes.xml'
        }
    )



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3003, debug=True)
