from lxml import etree
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen.canvas import Canvas
from lxml import html
import openpyxl
import xml.etree.ElementTree as ET
from lxml import etree, html


def affichage_planning_after():
    # Parse the XML and XSL documents
    try:
        xml_doc = etree.parse('../emploi de temps/EmploiTemps.xml')
        xsl_doc = etree.parse('../emploi de temps/EmploiTemps.xsl')
    except etree.XMLSyntaxError as e:
        print("Error parsing XML or XSL:", e)
        return

    # Create a transform object
    try:
        transform = etree.XSLT(xsl_doc)
    except etree.XSLTParseError as e:
        print("Error creating XSLT transform:", e)
        return

    # Transform the XML document
    try:
        result_doc = transform(xml_doc)
    except etree.XSLTApplyError as e:
        print("Error applying XSLT transform:", e)
        return

    # Convert the transformed XML document to a string
    result_string = etree.tostring(result_doc).decode()

    # Parse the result as HTML
    result_html = html.fromstring(result_string)

    # Write the HTML document to a file
    try:
        with open('./templates/planning_after.html', 'w') as f:
            f.write(html.tostring(result_html).decode())
    except Exception as e:
        print("Error writing HTML to file:", e)

