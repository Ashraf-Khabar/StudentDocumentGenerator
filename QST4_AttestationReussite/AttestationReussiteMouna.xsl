<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:r="http://GINF2AttestaionReussite.org"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <xsl:template match="r:attes">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4" width="21cm" height="29.7">
                <fo:flow flow-name="xsl-region-body">
                    
                    
                    <!-- TOP BAR -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="8.5cm"/>
                        <fo:table-column column-width="5cm"/>
                        <fo:table-column column-width="8.5cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell width="8.5cm" height="3cm" margin-right="0.6cm">
                                    <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center" margin-top="0.5cm" margin-bottom="0.1cm" >
                                        <xsl:value-of select="r:royaumefr"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="0.1cm">
                                        <xsl:value-of select="r:nameUaefr"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="0.1cm">
                                        <xsl:value-of select="r:nameSchoolfr"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="19px" color="#02306E" text-align="center"  margin-bottom="0.1cm">
                                        <xsl:value-of select="r:villeSchoolfr"/>
                                    </fo:block>
                                    
                                    <fo:block  text-align="center"  margin-bottom="0.1cm">
                                        <fo:instream-foreign-object>
                                            <svg width="85" height="12" viewBox="0 0 85 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <g filter="url(#filter0_di)">
                                                    <line x1="4.99667" y1="1" x2="80.0033" y2="1" stroke="#013172"/>
                                                </g>
                                                <rect x="16" y="2" width="55" height="10" fill="#013172"/>
                                                <defs>
                                                    <filter id="filter0_di" x="0.996666" y="0.5" width="83.0067" height="9" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                        <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                                                        <feOffset dy="4"/>
                                                        <feGaussianBlur stdDeviation="2"/>
                                                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                                                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
                                                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                                        <feOffset dy="4"/>
                                                        <feGaussianBlur stdDeviation="2"/>
                                                        <feComposite in2="hardAlpha" operator="arithmetic" k2="-1" k3="1"/>
                                                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                        <feBlend mode="normal" in2="shape" result="effect2_innerShadow"/>
                                                    </filter>
                                                </defs>
                                            </svg>
                                            
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    
                                </fo:table-cell>
                                <fo:table-cell width="4cm" >
                                    <xsl:if test="r:logoEnsa">
                                        <fo:block margin-top="0.1cm" margin-left="-0.43cm">
                                            <fo:external-graphic 
                                                src="ensa.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="6cm"
                                                height="3cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                
                                
                                <fo:table-cell width="9.5cm" height="3cm" margin-right="-1.2cm">
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#02306E" text-align="center" margin-top="0.35cm" margin-bottom="0.03cm"                                         >
                                        <xsl:value-of select="r:royaumeAr"/>
                                        
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#02306E" text-align="center"  margin-bottom="0.03cm" 
                                        >
                                        <xsl:value-of select="r:nameUaeAr"/>
                                    </fo:block>
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#02306E" text-align="center"  margin-bottom="0.03cm" 
                                        >
                                        <xsl:value-of select="r:nameSchoolAr"/>
                                    </fo:block>
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#02306E" text-align="center" margin-bottom="-0.15cm"  
                                        >
                                        <xsl:value-of select="r:villeSchoolAr"/>
                                    </fo:block>
                                    <fo:block  text-align="center"  >
                                        <fo:instream-foreign-object>
                                            <svg width="85" height="12" viewBox="0 0 85 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <g filter="url(#filter0_di)">
                                                    <line x1="4.99667" y1="1" x2="80.0033" y2="1" stroke="#013172"/>
                                                </g>
                                                <rect x="16" y="2" width="55" height="10" fill="#013172"/>
                                                <defs>
                                                    <filter id="filter0_di" x="0.996666" y="0.5" width="83.0067" height="9" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                                        <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                                                        <feOffset dy="4"/>
                                                        <feGaussianBlur stdDeviation="2"/>
                                                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                                                        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
                                                        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                                        <feOffset dy="4"/>
                                                        <feGaussianBlur stdDeviation="2"/>
                                                        <feComposite in2="hardAlpha" operator="arithmetic" k2="-1" k3="1"/>
                                                        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                                                        <feBlend mode="normal" in2="shape" result="effect2_innerShadow"/>
                                                    </filter>
                                                </defs>
                                            </svg>
                                            
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    
                    
                    <!-- TITLE -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="21cm"/>
                       
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                <fo:block font-family="Arial" font-size="34px"
                                    color="#02306E" text-align="center" margin-top="3cm" 
                                    letter-spacing="0.01cm" word-spacing="0.1cm" text-decoration="underline"
                                    >
                                    <xsl:value-of select="r:title"/>
                                </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            
                        </fo:table-body>
                    </fo:table>
                    <!--==================================-->
                    
                    
                    
                    <!-- BODY -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="21cm"/>
                        
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell  >
                                    
                                    
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#000000" text-align="center" margin-bottom ="0.5cm" margin-top="2cm"
                                        >
                                        <xsl:value-of select="r:body/r:header"/>
                                    </fo:block>
                                    
                                    
                                    
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#011632" text-align="center" margin-bottom ="0.1cm"
                                        font-weight="bold"
                                        >
                                        <xsl:value-of select="r:body/r:infoEtudiant/r:nom"/>
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#000000" text-align="center"  margin-bottom ="0.1cm"
                                        >
                                        <xsl:value-of select="r:body/r:infoEtudiant/r:naissance"/>
                                    </fo:block>
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#000000" text-align="center" margin-bottom ="0.2cm" 
                                        >
                                        <xsl:value-of select="r:body/r:infoEtudiant/r:message"/>
                                    </fo:block>
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#011632" text-align="center" margin-top ="0.2cm"
                                        font-weight="bold"
                                        >
                                        <xsl:value-of select="r:body/r:infoEtudiant/r:nivAdmis"/>
                                    </fo:block>
                                    <fo:block font-family="Arial" font-size="24px"
                                        color="#000000" text-align="center" margin-top ="0.5cm"
                                        >
                                        <xsl:value-of select="r:body/r:infoEtudiant/r:annee"/>
                                    </fo:block>
                                    
                                    <fo:block margin-top ="0.1cm" margin-left="6.9cm" >
                                        <fo:instream-foreign-object>
                                    <svg width="310" height="2" viewBox="0 0 310 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <line y1="1" x2="310" y2="1" stroke="black" stroke-width="2"/>
                                    </svg>
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            
                        </fo:table-body>
                    </fo:table>
                    <!--==================================-->
                    
                    <!-- Footer -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="21cm"/>
                        
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block font-family="Arial" font-size="18px"
                                        color="#000000" margin-left="12cm" margin-top="6cm" 
                                        >
                                        <xsl:value-of select="r:footer/r:date"/>
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="18px"
                                        color="#000000" margin-left="1cm" margin-top="1.5cm" 
                                        >
                                        <xsl:value-of select="r:footer/r:CodeApogeName"/>
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="18px"
                                        color="#000000" margin-left="4cm" margin-top="-0.45cm" 
                                        >
                                        <xsl:value-of select="r:footer/r:CodeApoge"/>
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="18px"
                                        color="#000000" margin-left="15cm" margin-top="-0.9cm" 
                                        >
                                        <xsl:value-of select="r:footer/r:Signature"/>
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="14px"
                                        color="#000000" margin-left="0.3cm" margin-top="2.7cm" 
                                        >
                                        <xsl:value-of select="r:footer/r:avis"/>
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