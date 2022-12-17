const fs = require('fs');
const xml2js = require('xml2js');
const PDFDocument = require('pdfkit');
const express = require("express");
const xslt = require('xslt-processor');
const xslt4node = require("xslt4node");

const app = express()

// Read the XML file
// fs.readFile('../affiche_des_notes/Ginf2_Notes.xml', 'utf8', (err, data) => {
//     if (err) {
//         console.error(err);
//         return;
//     }
//
//     // Parse the XML data
//     xml2js.parseString(data, (err, result) => {
//         if (err) {
//             console.error(err);
//             return;
//         }
//
//         // Extract the relevant information from the XML data
//         const notes = result.notes.note;
//
//         // Create a new PDF document
//         const doc = new PDFDocument();
//
//         // Set the font size and font family for the PDF document
//         doc.fontSize(25).font('Helvetica');
//
//         for (const note of notes) {
//             // Extract the relevant information from the note element
//             const cne = note.CNE;
//             const firstName = note.FirstName;
//             const lastName = note.LastName;
//             const className = note.ClassName;
//             const moduleName = note.ModuleName;
//             const noteElement = note.NoteElement;
//
//             // Add a heading for the note
//             doc.text('Note:');
//             doc.moveDown();
//
//             // Add the information for the note to the PDF document
//             doc.text(`CNE: ${cne}`);
//             doc.moveDown();
//             doc.text(`First Name: ${firstName}`);
//             doc.moveDown();
//             doc.text(`Last Name: ${lastName}`);
//             doc.moveDown();
//             doc.text(`Class Name: ${className}`);
//             doc.moveDown();
//             doc.text(`Module Name: ${moduleName}`);
//             doc.moveDown();
//             doc.text(`Note Element: ${noteElement}`);
//             doc.moveDown();
//         }
//
//         // Save the PDF document to a file
//         const pdfFile = './file.pdf';
//         doc.pipe(fs.createWriteStream(pdfFile));
//         doc.end();
//
//         // Read the PDF file and send it to the client in the response
//         app.get('/pdf', (req, res) => {
//             fs.readFile(pdfFile, (err, data) => {
//                 if (err) {
//                     console.error(err);
//                     res.status(500).send('Error generating PDF');
//                     return;
//                 }
//                 res.setHeader('Content-Type', 'application/pdf');
//                 res.send(data);
//             });
//         });
//     });
// });

fs.readFile('../affiche_des_notes/Ginf2_Notes.xml', 'utf8', (err, xml) => {
    if (err) {
        console.error(err);
        return;
    }
    // Read the XSL file
    fs.readFile('../affiche_des_notes/Affichage_Ing.xsl', 'utf8', (err, xsl) => {
        if (err) {
            console.error(err);
            return;
        }
        console.log(xslt4node);

        // Apply the XSL style to the XML data
        xslt4node.transform(xslt, (err, transformedXml) => {
            console.log(transformedXml);
            if (err) {
                console.error(err);
                return;
            }

            // Extract the relevant information from the transformed XML data
            const notes = transformedXml.notes.note;

            // Create a new PDF document
            const doc = new PDFDocument();

            // Set the font size and font family for the PDF document
            doc.fontSize(25).font('Helvetica');

            for (const note of notes) {
                // Extract the relevant information from the note element
                const cne = note.CNE;
                const firstName = note.FirstName;
                const lastName = note.LastName;
                const className = note.ClassName;
                const moduleName = note.ModuleName;
                const noteElement = note.NoteElement;

                // Add a heading for the note
                doc.text('Note:');
                doc.moveDown();

                // Add the information for the note to the PDF document
                doc.text(`CNE: ${cne}`);
                doc.moveDown();
                doc.text(`First Name: ${firstName}`);
                doc.moveDown();
                doc.text(`Last Name: ${lastName}`);
                doc.moveDown();
                doc.text(`Class Name: ${className}`);
                doc.moveDown();
                doc.text(`Module Name: ${moduleName}`);
                doc.moveDown();
                doc.text(`Note Element: ${noteElement}`);
                doc.moveDown();
            }

            // Save the PDF document to a file
            const pdfFile = './file.pdf';
            doc.pipe(fs.createWriteStream(pdfFile));
            doc.end();

            // Read the PDF file and send it to the client in the response
            app.get('/pdf', (req, res) => {
                fs.readFile(pdfFile, (err, data) => {
                    if (err) {
                        console.error(err);
                        res.status(500).send('Error generating PDF');
                        return;
                    }
                });
            });
        })
    })
})

app.listen(3001, () => {
    console.log("this app is running in the port 3001");
});
