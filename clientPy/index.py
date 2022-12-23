import requests

# Send the GET request to the Flask API
response = requests.get('http://localhost:5000/excel-to-xml', params={'excel_file_path': 'data.xlsx'})

# Save the response to an XML file
with open('output.xml', 'w') as f:
    f.write(response.text)

# http://localhost:5000/excel-to-xml?excel_file_path=data.xlsx