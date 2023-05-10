<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    <xsl:template match="/">
       <fo:root>
           <fo:layout-master-set>
               <fo:simple-page-master master-name="A4" margin-top="0.2cm"   margin-bottom="0.2cm"
                   margin-left="0.1cm">
                   <fo:region-body />
                   <fo:region-before extent="3.0cm"/>
               </fo:simple-page-master>
           </fo:layout-master-set>
           <fo:page-sequence master-reference="A4">
               <fo:flow flow-name="xsl-region-body">
                   <!-- TOP BAR -->
                   <fo:table table-layout="fixed">
                       <fo:table-column column-width="6cm"/>
                       <fo:table-column column-width="10cm"/>
                       <fo:table-column column-width="6cm"/>
                       <fo:table-body>
                           <fo:table-row >
                               <fo:table-cell width="6cm" >
                                   <xsl:if test="//logoUae">
                                       <fo:block >
                                           <fo:external-graphic 
                                               src="logoUae.jpeg" 
                                               content-height="scale-to-fit"
                                               content-width="scale-to-fit"
                                               width="3.1cm"
                                               height="3.6cm"
                                               scaling="non-uniform"
                                           />
                                       </fo:block>
                                   </xsl:if>
                               </fo:table-cell>
                               <fo:table-cell width="10cm" height="4cm">
                                   <fo:block font-family="Roboto" font-size="35px" color="#02306E" text-align="center"  margin-top="1cm" text-decoration="underline">
                                       Relevé des notes 
                                   </fo:block>
                                   <fo:block font-family="Roboto" font-size="35px" color="#02306E" text-align="center" margin-top="0.1" margin-bottom="-0.02cm" >
                                        Classe : <xsl:value-of select="//classe"/>
                                   </fo:block>
                                   <fo:block font-family="Roboto" font-size="35px" color="#02306E" text-align="center"  margin-bottom="-0.02cm" >
                                       Promotion : <xsl:value-of select="//annee"/>
                                   </fo:block>
                                   
                               </fo:table-cell>
                               <fo:table-cell width="6cm" >
                                   <xsl:if test="//logoEnsa">
                                       <fo:block margin-left="0.2cm" margin-top="0.6cm">
                                           <fo:external-graphic 
                                               src="ensat.png" 
                                               content-height="scale-to-fit"
                                               content-width="scale-to-fit"
                                               width="4.3cm"
                                               height="2.5cm"
                                               scaling="non-uniform"
                                            />
                                       </fo:block>
                                   </xsl:if>
                               </fo:table-cell>
                           </fo:table-row>
                       </fo:table-body>
                       
                   </fo:table>
                   --------------------------------------------------------------------------------------------------
                   <!-- Releve de notes en tableau -->
                   <!-- 1 ere ligne -->
                   <fo:table table-layout="fixed">
                       
                       <fo:table-column column-width="3.1cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.33cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       <fo:table-column column-width="1.25cm" border-width="1px" border-style="solid"/>
                       
                       <fo:table-header  >
                           
                           <fo:table-row border-width="1px" border-style="solid" background-color="#93C4FF" >
                               
                               <fo:table-cell width="3.2cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm"  text-align="center">
                                       Etudiant
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.33cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       CNE
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[1]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[2]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[3]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center" >
                                       <xsl:value-of select="//Module[4]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center" margin-left="0.2cm">
                                       <xsl:value-of select="//Module[5]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[6]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[7]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[8]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[9]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center" >
                                       <xsl:value-of select="//Module[10]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E" margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[11]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center">
                                       <xsl:value-of select="//Module[12]/@code"/>
                                   </fo:block>
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.33cm" >
                                   <fo:block font-size="13px" color="#02306E"  margin-top="0.5cm" margin-bottom="0.5cm" text-align="center" >
                                       Résultat
                                   </fo:block>
                               </fo:table-cell>
                               
                               
                               
                               
                           </fo:table-row>
                       </fo:table-header>
                       
                       <fo:table-body>
                           
                           <fo:table-row >
                               <fo:table-cell width="3.2cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant">
                                       <fo:block 
                                           width="3.2cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Prenom"/>
                                           <xsl:text> </xsl:text>
                                           <xsl:value-of select="Nom"/>
                                       </fo:block>
                                       
                                      
                                   </xsl:for-each>
                               </fo:table-cell>    
                               <fo:table-cell width="1.3cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant">
                                       <fo:block 
                                           width="1.3cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="@CNE"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                        
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note1"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note2"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note3"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note4"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note5"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note6"/>
                                       </fo:block> 
                                   </xsl:for-each>
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note7"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note8"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell>
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note9"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note10"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note11"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" >
                                   <xsl:for-each select="//Etudiant/Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:value-of select="Note12"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell>  
                               
                               <fo:table-cell width="1.25cm" height="4cm" border-width="1px" border-style="solid" background-color="#6BDB4B" >
                                   <xsl:for-each select="//Notes">
                                       <fo:block 
                                           width="1.25cm"
                                           height="4cm" font-size="10px"
                                           color="#000000"
                                           padding-top="0.6cm"
                                           padding-bottom="0.6cm"
                                           text-align="center"
                                           border-width="1px" border-style="solid">
                                           <xsl:variable name="moy" select="Note1+Note2+Note3+Note4+Note5+Note6+Note7+Note8+Note9+Note10+Note11+Note12"/>
                                           <xsl:value-of select="format-number($moy div 12,'#.###')"/>
                                       </fo:block> 
                                   </xsl:for-each>
                                   
                               </fo:table-cell> 
                           </fo:table-row>
                       </fo:table-body>
                   </fo:table>
               </fo:flow>
           </fo:page-sequence>
       </fo:root> 
       
        
    </xsl:template>
    
</xsl:stylesheet>