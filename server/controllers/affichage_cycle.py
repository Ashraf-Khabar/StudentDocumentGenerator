from lxml import etree
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen.canvas import Canvas
from lxml import html
import openpyxl
import xml.etree.ElementTree as ET


def insert_data_from_excel(excel_file, xml_file):
    # Read the Excel file
    wb = openpyxl.load_workbook(excel_file)
    sheet = wb.active

    # Parse the XML file
    xml_root = ET.parse(xml_file).getroot()

    # Iterate over the rows in the Excel file
    for row in sheet.iter_rows(min_row=2):
        cne = row[0].value
        first_name = row[1].value
        last_name = row[2].value
        class_name = row[3].value
        module_name = row[4].value
        note = row[5].value

        # Create a new 'note' element and add it to the XML document
        note_element = ET.SubElement(xml_root, "note")
        cne_element = ET.SubElement(note_element, "CNE")
        cne_element.text = cne
        first_name_element = ET.SubElement(note_element, "FirstName")
        first_name_element.text = first_name
        last_name_element = ET.SubElement(note_element, "LastName")
        last_name_element.text = last_name
        class_name_element = ET.SubElement(note_element, "ClassName")
        class_name_element.text = class_name
        module_name_element = ET.SubElement(note_element, "ModuleName")
        module_name_element.text = module_name
        note_element_element = ET.SubElement(note_element, "NoteElement")
        note_element_element.text = note

    # Write the modified XML document to a file
    ET.ElementTree(xml_root).write(xml_file)


def affichage_cycle():
    # Parse the XML and XSL files
    xml_doc = etree.parse('../affiche_des_notes/Ginf2_Notes.xml')
    xsl_doc = etree.parse('../affiche_des_notes/Affichage_Ing.xsl')

    # Create a transform object
    transform = etree.XSLT(xsl_doc)

    # Transform the XML document and save the result to a variable
    result_doc = transform(xml_doc)

    # Convert the transformed XML document to a string
    result_string = etree.tostring(result_doc).decode()

    # Parse the result as HTML
    result_html = html.fromstring(result_string)

    # Write the HTML document to a file
    with open('./templates/output.html', 'w') as f:
        f.write(html.tostring(result_html).decode())
