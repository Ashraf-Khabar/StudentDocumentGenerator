<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:e="http://GINF2Emploi.org"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
   
    version="2.0">
    
    
    <xsl:template match="e:emploi">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simplePage"  page-height="22cm" page-width="28cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simplePage">
                <fo:flow flow-name="xsl-region-body">
                    
                    <!-- TOP BAR -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="5cm"/>
                        <fo:table-column column-width="13cm"/>
                        <fo:table-column column-width="7cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                
                                <fo:table-cell width="3.5cm" >
                                    <xsl:if test="e:TopBar/e:logoUae">
                                        <fo:block margin-top="0.1cm" margin-left="0.2cm">
                                            <fo:external-graphic 
                                                src="logoUae.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="1.7cm"
                                                height="2cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                
                                <fo:table-cell width="18cm" height="4cm" margin-right="0.8cm">
                                    <fo:block font-family="Roboto" font-size="34px" color="#02306E" text-align="center" margin-top="0.9cm" margin-left="2.5cm"
                                        font-style="italic">
                                        <xsl:value-of select="e:TopBar/e:Title"/>
                                    </fo:block>
                                </fo:table-cell>
                               
                                
                                
                                <fo:table-cell width="3.5cm" >
                                    <xsl:if test="e:TopBar/e:logoEnsa">
                                        <fo:block  margin-top="0.2cm" margin-left="3.3cm" >
                                            <fo:external-graphic 
                                                src="ensa.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="2.9cm"
                                                height="1.9cm"
                                                scaling="non-uniform" 
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                
                                
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    <!--==================================-->
                    
                    <!-- Choose Week Bar -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="1.5cm"/>
                        <fo:table-column column-width="2cm"/>
                        <fo:table-column column-width="1.5cm"/>
                        <fo:table-column column-width="2cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                
                                <fo:table-cell width="1.5cm" >
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.8cm" margin-left="10cm"
                                        >
                                        <xsl:value-of select="e:TopBar/e:semaine"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="2cm" height="4cm" margin-right="0.8cm">
                                    <fo:block margin-top="-0.9cm" margin-left="9.7cm">
                                    <fo:instream-foreign-object>
                                        <svg width="85" height="34" viewBox="0 0 80 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect x="0.5" y="0.5" width="79" height="27.5" fill="white" stroke="black"/>
                                        </svg>
                                    </fo:instream-foreign-object>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.75cm" margin-left="10.1cm"
                                       >
                                        <xsl:value-of select="e:TopBar/e:SemNum"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                                
                                <fo:table-cell width="1.5cm" >
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.8cm" margin-left="10.5cm"
                                        >
                                        <xsl:value-of select="e:TopBar/e:annee"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="2cm" >
                                    <fo:block margin-top="-0.94cm" margin-left="10cm">
                                    <fo:instream-foreign-object>
                                        <svg width="85" height="37" viewBox="0 0 80 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect x="0.5" y="0.5" width="79" height="28" fill="white" stroke="black"/>
                                        </svg>
                                    </fo:instream-foreign-object>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.75cm" margin-left="10.7cm"
                                       >
                                        <xsl:value-of select="e:TopBar/e:AnneeNum"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                
                    <!--==================================-->
                    
   <!-- EmploiBody Days of Week -->   
    
    
        <fo:table margin-left="1.7cm" margin-top="-3cm" >
            <fo:table-column column-width="1.5cm"/>
            <fo:table-column column-width="3.8cm"/>
            <fo:table-column column-width="3.8cm"/>
            <fo:table-column column-width="3.8cm"/>
            <fo:table-column column-width="3.8cm"/>
            <fo:table-column column-width="3.8cm"/>
            <fo:table-column column-width="3.8cm"/>
            <fo:table-header  >
                <fo:table-row >
                    
                    <fo:table-cell width="1.5cm" border="solid">
                        <fo:block width="1.5cm" height="1cm"  >
                            
                        </fo:block>
                    </fo:table-cell>
                    
                    <xsl:for-each select="//e:day">
                       <fo:table-cell width="3.8cm" height="1cm" border="solid">
                            
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.2cm"
                                margin-left="-0.5cm" font-size="20px"
                               font-weight="bold" color="#000000">
                                <xsl:value-of select="@name"/>
                           </fo:block>
                        </fo:table-cell>
                    </xsl:for-each>
      
                            </fo:table-row>
                        </fo:table-header>
            
            <!--=========================-->
            <!-- body Table with time-->
            <fo:table-body>
                
                <fo:table-row  >
                    <fo:table-cell width="1.5cm" height="12cm" border="solid" >
                       
                            <xsl:for-each select="//e:time">
                                    <fo:block width="1.5cm"
                                        height="1cm" font-size="20px"
                                        font-weight="bold" color="#000000"
                                        margin-left="-1.5cm" margin-top="0.05cm" >
                                        <xsl:value-of select="@t"/>
                                    </fo:block>
                                
                            </xsl:for-each>
                     
                     
                     
                     
                     
                     
                        
                        
                        
                    </fo:table-cell>
                    
                    <!--<xsl:for-each select="//e:day">-->
                        
                    <!--                          Lundi                                     -->
                    
                        <fo:table-cell width="3.8cm" height="12cm" border="solid">
                            
                            
                            <!--FirstMAtiere-->
                            <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.2cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                       <fo:table-cell >
                                           <fo:block font-size="15px" >
                                               <xsl:value-of select="e:matieres/e:matiere1/e:type"/>
                                               <xsl:value-of select="e:matieres/e:matiere1/e:Durre1"/>
                                               <!--Cour - HDep - Hfin-->
                                           </fo:block>
                                       </fo:table-cell>
                                   </fo:table-header>
                                   
                                   <fo:table-body>
                                       <fo:table-cell >
                                           <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                               <xsl:value-of select="e:matieres/e:matiere1/e:nom"/>
                                               <!--Matière-->
                                           </fo:block>
                                           <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                               <xsl:value-of select="e:matieres/e:matiere1/e:nomProf"/>
                                               <!--PROF-->
                                           </fo:block>
                                           <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                               <xsl:value-of select="e:matieres/e:matiere1/e:salle"/>
                                               <!--Salle-->
                                           </fo:block>
                                       </fo:table-cell>
                                   </fo:table-body>
                               </fo:table>
                            </fo:block>
                            </fo:block>
                            
                            <!--======================-->
                            
                            <!--2eme MAtiere-->
                            <fo:block>
                                <fo:block width="1.5cm"
                                    height="1cm" margin-top="0.08cm"
                                    margin-left="-1.6cm" font-size="20px"
                                    font-weight="bold" color="#000000" >
                                    <fo:instream-foreign-object margin-left="-4cm">
                                        <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                            <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                        </svg>
                                        
                                    </fo:instream-foreign-object>
                                </fo:block>
                                <fo:block width="0.5cm"
                                    height="1cm" margin-top="-2.5cm"
                                    margin-left="-0.5cm" font-size="20px"
                                    font-weight="bold" color="#000000" >
                                    <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                        
                                        <fo:table-header  >
                                            <fo:table-cell >
                                                <fo:block font-size="15px">
                                                    <xsl:value-of select="e:matieres/e:matiere1suite/e:type"/>
                                                    <xsl:value-of select="e:matieres/e:matiere1suite/e:Durre1"/>
                                                    <!--Cour - HDep - Hfin-->
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-header>
                                        
                                        <fo:table-body>
                                            <fo:table-cell >
                                                <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                    <xsl:value-of select="e:matieres/e:matiere1suite/e:nom"/>
                                                    <!--Matière-->
                                                </fo:block>
                                                <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                    <xsl:value-of select="e:matieres/e:matiere1suite/e:nomProf"/>
                                                    <!--PROF-->
                                                </fo:block>
                                                <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                    <xsl:value-of select="e:matieres/e:matiere1suite/e:salle"/>
                                                    <!--Salle-->
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </fo:block>
                            
                            <!--======================-->
                            
                            <!--3eme MAtiere-->
                            <fo:block>
                                <fo:block width="1.5cm"
                                    height="1cm" margin-top="1.5cm"
                                    margin-left="-1.6cm" font-size="20px"
                                    font-weight="bold" color="#000000" >
                                    <fo:instream-foreign-object margin-left="-4cm">
                                        <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#42E427" stroke="black"/>
                                            <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                        </svg>
                                        
                                    </fo:instream-foreign-object>
                                </fo:block>
                                <fo:block width="0.5cm"
                                    height="1cm" margin-top="-2.5cm"
                                    margin-left="-0.5cm" font-size="20px"
                                    font-weight="bold" color="#000000" >
                                    <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                        
                                        <fo:table-header  >
                                            <fo:table-cell >
                                                <fo:block font-size="15px">
                                                    <xsl:value-of select="e:matieres/e:matiere2/e:type"/>
                                                    <xsl:value-of select="e:matieres/e:matiere2/e:Durre1"/>
                                                    <!--Cour - HDep - Hfin-->
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-header>
                                        
                                        <fo:table-body>
                                            <fo:table-cell >
                                                <fo:block font-size="15px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                    <xsl:value-of select="e:matieres/e:matiere2/e:nom"/>
                                                    <!--Matière-->
                                                </fo:block>
                                                <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                    <xsl:value-of select="e:matieres/e:matiere2/e:nomProf"/>
                                                    <!--PROF-->
                                                </fo:block>
                                                <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                    <xsl:value-of select="e:matieres/e:matiere2/e:salle"/>
                                                    <!--Salle-->
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </fo:block>
                            
                            <!--======================-->
                            
                            <!--4eme MAtiere-->
                            <fo:block>
                                <fo:block width="1.5cm"
                                    height="1cm" margin-top="0.12cm"
                                    margin-left="-1.6cm" font-size="20px"
                                    font-weight="bold" color="#000000" >
                                    <fo:instream-foreign-object margin-left="-4cm">
                                        <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#42E427" stroke="black"/>
                                            <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                        </svg>
                                        
                                    </fo:instream-foreign-object>
                                </fo:block>
                                <fo:block width="0.5cm"
                                    height="1cm" margin-top="-2.5cm"
                                    margin-left="-0.5cm" font-size="20px"
                                    font-weight="bold" color="#000000" >
                                    <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                        
                                        <fo:table-header  >
                                            <fo:table-cell >
                                                <fo:block font-size="15px">
                                                    <xsl:value-of select="e:matieres/e:matiere3/e:type"/>
                                                    <xsl:value-of select="e:matieres/e:matiere3/e:Durre1"/>
                                                    <!--Cour - HDep - Hfin-->
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-header>
                                        
                                        <fo:table-body>
                                            <fo:table-cell >
                                                <fo:block font-size="15px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                    <xsl:value-of select="e:matieres/e:matiere3/e:nom"/>
                                                    <!--Matière-->
                                                </fo:block>
                                                <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                    <xsl:value-of select="e:matieres/e:matiere3/e:nomProf"/>
                                                    <!--PROF-->
                                                </fo:block>
                                                <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                    <xsl:value-of select="e:matieres/e:matiere3/e:salle"/>
                                                    <!--Salle-->
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:block>
                            </fo:block>
                            
                            <!--======================-->
                            
                            
                        </fo:table-cell>
                        <!-- ======================-->
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    <!--                          Mardi                                     -->
                    
                    <fo:table-cell width="3.8cm" height="12cm" border="solid">
                        
                        
                        <!--FirstMAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.2cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere4/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere4/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere4/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere4/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere4/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--2eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.08cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#42E427" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere5/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere5/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere5/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere5/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere5/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--3eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="1.5cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere6/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere6/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="15px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                <xsl:value-of select="e:matieres/e:matiere6/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere6/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere6/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--4eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.12cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere7/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere7/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" text-align="center" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere7/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere7/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere7/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        
                    </fo:table-cell>
                    <!-- ======================-->
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <!--                          Mercredi                                     -->
                    
                    <fo:table-cell width="3.8cm" height="12cm" border="solid">
                        
                        
                        <!--FirstMAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.2cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere8/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere8/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="15px" margin-top="0.1cm" width="3.6cm" margin-left="-0.23cm">
                                                <xsl:value-of select="e:matieres/e:matiere8/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere8/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere8/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--2eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.08cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#42E427" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere9/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere9/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="15px" margin-top="0.1cm" width="3.6cm" margin-left="-0.23cm">
                                                <xsl:value-of select="e:matieres/e:matiere9/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere9/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere9/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                    </fo:table-cell>
                    <!-- ======================-->
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <!--                          Jeudi                                     -->
                    
                    <fo:table-cell width="3.8cm" height="12cm" border="solid">
                        
                        
                        <!--FirstMAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.2cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="56.8319" rx="11.5" fill="#F9FCA9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm"
                                    border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere10/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere10/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere10/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere10/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere10/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--2eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.08cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="56.8319" rx="11.5" fill="#F9FCA9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere11/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere11/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere11/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere11/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere11/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--3eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="1.5cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere12/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere12/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                <xsl:value-of select="e:matieres/e:matiere12/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere12/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere12/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--4eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.12cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere13/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere13/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                <xsl:value-of select="e:matieres/e:matiere13/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere13/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere13/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        
                    </fo:table-cell>
                    <!-- ======================-->
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <!--                          Vendredi                                    -->
                    
                    <fo:table-cell width="3.8cm" height="12cm" border="solid">
                        
                        
                        <!--FirstMAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.2cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere14/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere14/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere14/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere14/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere14/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--2eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.08cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="56.8319" rx="11.5" fill="#F9FCA9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere15/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere15/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.1cm">
                                                <xsl:value-of select="e:matieres/e:matiere15/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere15/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere15/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--3eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="2cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere16/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere16/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                <xsl:value-of select="e:matieres/e:matiere16/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere16/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere16/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        <!--4eme MAtiere-->
                        <fo:block>
                            <fo:block width="1.5cm"
                                height="1cm" margin-top="0.1cm"
                                margin-left="-1.6cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:instream-foreign-object margin-left="-4cm">
                                    <svg width="175" height="130" viewBox="0 0 98 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <rect x="-0.09772" y="0.985062" width="95.4644" height="52.8319" rx="11.5" fill="#C17FE9" stroke="black"/>
                                        <line x1="1.52698" y1="11.1227" x2="95.1328" y2="11.1227" stroke="black"/>
                                    </svg>
                                    
                                </fo:instream-foreign-object>
                            </fo:block>
                            <fo:block width="0.5cm"
                                height="1cm" margin-top="-2.5cm"
                                margin-left="-0.5cm" font-size="20px"
                                font-weight="bold" color="#000000" >
                                <fo:table margin-left="-0.98cm" width="3.6cm" border-collapse="separate"  >
                                    
                                    <fo:table-header  >
                                        <fo:table-cell >
                                            <fo:block font-size="15px">
                                                <xsl:value-of select="e:matieres/e:matiere17/e:type"/>
                                                <xsl:value-of select="e:matieres/e:matiere17/e:Durre1"/>
                                                <!--Cour - HDep - Hfin-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-header>
                                    
                                    <fo:table-body>
                                        <fo:table-cell >
                                            <fo:block font-size="16px" margin-top="0.1cm" width="3.6cm" margin-left="-0.2cm">
                                                <xsl:value-of select="e:matieres/e:matiere17/e:nom"/>
                                                <!--Matière-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.5cm">
                                                <xsl:value-of select="e:matieres/e:matiere17/e:nomProf"/>
                                                <!--PROF-->
                                            </fo:block>
                                            <fo:block font-size="18px" text-align="center" margin-left="-0.3cm">
                                                <xsl:value-of select="e:matieres/e:matiere17/e:salle"/>
                                                <!--Salle-->
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                        
                        <!--======================-->
                        
                        
                    </fo:table-cell>
                    <!-- ======================-->
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    <!--                          Samedi                                    -->
                    
                    <fo:table-cell width="3.8cm" height="12cm" border="solid">
                        
                        <fo:block width="1.5cm"
                            height="1cm" margin-top="0.2cm"
                            margin-left="-1.6cm" font-size="20px"
                            font-weight="bold" color="#000000" >
                        </fo:block>
                        
                        
                    </fo:table-cell>
                    <!-- ======================-->

                   <!-- </xsl:for-each>-->
                </fo:table-row>
                
            </fo:table-body>
                        
                        
                    </fo:table>
  
                    <!--==================================-->
                    
                    <!-- Choose Week Bar -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="8cm"/>
                        <fo:table-column column-width="4cm"/>
                        <fo:table-column column-width="4cm"/>
                        <fo:table-column column-width="4cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                
                                <fo:table-cell width="8cm" >
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" margin-top="1cm"  margin-left="3cm"
                                        >
                                        <xsl:value-of select="e:footer/e:titlefooter"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="4cm"   margin-top="1cm">
                                    <fo:block margin-top="1cm" margin-left="3.7cm">
                                        <fo:instream-foreign-object>
                                            <svg width="85" height="34" viewBox="0 0 80 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.5" y="0.5" width="79" height="27.5" fill="#C17FE9" stroke="black"/>
                                            </svg>
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.75cm" margin-left="1.9cm"
                                        >
                                        <xsl:value-of select="e:footer/e:f1"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                                
                                
                                
                                <fo:table-cell width="4cm" >
                                    <fo:block margin-top="1cm" margin-left="4cm">
                                        <fo:instream-foreign-object>
                                            <svg width="85" height="37" viewBox="0 0 80 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.5" y="0.5" width="79" height="28" fill="#42E427" stroke="black"/>
                                            </svg>
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.75cm" margin-left="2.7cm"
                                        >
                                        <xsl:value-of select="e:footer/e:f2"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell width="4cm" >
                                    <fo:block margin-top="1cm" margin-left="4cm">
                                        <fo:instream-foreign-object>
                                            <svg width="85" height="37" viewBox="0 0 80 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.5" y="0.5" width="79" height="28" fill="#F9FCA9" stroke="black"/>
                                            </svg>
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="24px" color="#000000" text-align="center" margin-top="-0.75cm" margin-left="2.7cm"
                                        >
                                        <xsl:value-of select="e:footer/e:f3"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                                
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    
                    <!--==================================-->
                    
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
</xsl:stylesheet>