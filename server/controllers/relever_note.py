from lxml import etree
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen.canvas import Canvas
from lxml import html
import openpyxl
import xml.etree.ElementTree as ET


def affichage_relever_note():
    xml_doc = etree.parse('../Releve_Note/ReleveNotes.xml')
    xsl_doc = etree.parse('../Releve_Note/ReleveNotesxsl.xsl')

    # Create a transform object
    transform = etree.XSLT(xsl_doc)

    # Transform the XML document and save the result to a variable
    result_doc = transform(xml_doc)

    # Convert the transformed XML document to a string
    result_string = etree.tostring(result_doc).decode()

    # Parse the result as HTML
    result_html = html.fromstring(result_string)

    # Write the HTML document to a file
    with open('./templates/relever_note.html', 'w') as f:
        f.write(html.tostring(result_html).decode())