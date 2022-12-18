<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:b="http://studentcard.org"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    <xsl:template match="b:card">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple" page-height="3.5cm" page-width="6.3cm" >
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">
                <!-- TOP BAR -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="1cm"/>
                        <fo:table-column column-width="3.5cm"/>
                        <fo:table-column column-width="1cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell width="1cm" >
                                        <xsl:if test="b:logoUae">
                                            <fo:block >
                                                <fo:external-graphic 
                                                    src="logoUae.png" 
                                                    content-height="scale-to-fit"
                                                    content-width="scale-to-fit"
                                                    width="0.9cm"
                                                     height="0.7cm"
                                                     scaling="non-uniform"
                                                    />
                                            </fo:block>
                                        </xsl:if>
                                  </fo:table-cell>
                                   
                                <fo:table-cell width="4cm" height="1cm">
                                    <fo:block font-family="Roboto" font-size="8px" color="#02306E" text-align="center" margin-top="0.05cm" margin-bottom="-0.02cm">
                                           <xsl:value-of select="b:nameUae"/>
                                       </fo:block>
                                    <fo:block font-family="Roboto" font-size="8px" color="#02306E" text-align="center"  margin-bottom="-0.02cm">
                                           <xsl:value-of select="b:nameSchool"/>
                                       </fo:block>
                                    <fo:block font-family="Roboto" font-size="8px" color="#02306E" text-align="center"  margin-bottom="-0.02cm">
                                        <xsl:value-of select="b:villeSchool"/>
                                    </fo:block>
                                   </fo:table-cell>
                                        
                                    
                                <fo:table-cell width="0.8cm" >
                                        <xsl:if test="b:logoEnsa">
                                            <fo:block >
                                                <fo:external-graphic 
                                                    src="ensa.png"
                                                    content-height="scale-to-fit"
                                                    content-width="scale-to-fit"
                                                    width="1cm"
                                                    height="0.7cm"
                                                    scaling="non-uniform"
                                                />
                                            </fo:block>
                                        </xsl:if>
                                    </fo:table-cell> 
                           </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    <!--==================================-->
                    
                    <!--Line Bar -->
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="6.3cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  >
                                    <fo:block width="4.4cm" margin-left="0.92cm" margin-top="-0.52cm" >
                                        <fo:instream-foreign-object>
                                            <svg width="196" height="2" viewBox="0 0 497 4" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <line x1="-0.000488281" y1="2" x2="497.001" y2="2" stroke="#E66E00" stroke-width="1.5"/>
                                            </svg> 
                                        </fo:instream-foreign-object>  
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    
                    <!--================================-->
                    
                    <!--Title of Card -->
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="6.3cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  >
                                    <fo:block width="6.3cm"  margin-top="-0.05cm"
                                        font-size="11px" color="#02306E" 
                                        margin-left="1.9cm" font-weight="200">
                                        <xsl:value-of select="b:title"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    
                    <!--==================================-->
                    
                    <!-- Body of Card -->
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="1.3cm"/>
                        <fo:table-column column-width="3.6cm"/>
                        <fo:table-column column-width="1.3cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell width="1.3cm" >
                                    <xsl:if test="b:photo">
                                        <fo:block margin-left="0.2cm" >
                                            <fo:external-graphic 
                                                src="sal3.jpg" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="1.2cm"
                                                height="1.5cm"
                                                scaling="non-uniform"
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                
                                <fo:table-cell width="2.9cm" height="1cm">
                                    <fo:block font-family="Roboto" font-size="9px" color="#02306E" margin-left="0.2cm" margin-top="0.5cm" margin-bottom="0.04cm">
                                        <xsl:value-of select="b:lastName"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="9px" color="#02306E"  margin-left="0.2cm"  margin-bottom="0.04cm">
                                        <xsl:value-of select="b:firstName"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="9px" color="#02306E"   margin-left="0.2cm" margin-bottom="0.04cm">
                                        <xsl:value-of select="b:codeApoge"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                                <fo:table-cell width="1.3cm" >
                                    <xsl:if test="b:scanBar" >
                                        <fo:block margin-left="0.7cm" margin-top="0.2cm">
                                            <fo:external-graphic 
                                                src="scanbar.png"
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="1.2cm"
                                                height="1.1cm"
                                                scaling="non-uniform"
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    
                    <!--====================================-->
                    
                    <!--Footer -->
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="6.3cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  >
                                    <fo:block width="6.3cm"  margin-top="0cm"
                                        font-weight="200"
                                        font-size="10px" color="#02306E" 
                                        margin-left="1.6cm">
                                        <xsl:value-of select="b:footer"/>
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