<GroupeTP>
<GroupeTP1>
{let $items:=(doc("GroupeTP.xml")//Etudiant)
let $nbr :=count($items) div 2
for $i in ($items )
where ($i/@id < ($nbr +1))
return 
 $i }
</GroupeTP1>

<GroupeTP2>
{let $items:=(doc("GroupeTP.xml")//Etudiant)
let $nbr :=count($items) div 2
for $i in ($items )
where ($i/@id > $nbr)
return 
 $i }
 </GroupeTP2>
 
</GroupeTP>
 
