
for $s in (doc("ReleveNotes.xml")//@c)
let $items:=(doc("ReleveNotes.xml")//Module[codeModule/@c=$s]//NoteMatiere)

return
<NoteModule > { avg($items)} </NoteModule>


