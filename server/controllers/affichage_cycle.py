from lxml import etree
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen.canvas import Canvas
from lxml import html


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
