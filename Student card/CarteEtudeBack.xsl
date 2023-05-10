<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:c="http://studentcardBack.org"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <xsl:template match="c:cardB">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="backCard" page-height="3.5cm" page-width="6.3cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="backCard">
                <fo:flow flow-name="xsl-region-body">
                    
                    
                    <!-- TOP BAR -->    
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="2.5cm"/>
                        <fo:table-column column-width="1cm"/>
                        <fo:table-column column-width="2cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell width="3cm" height="1cm" margin-right="0.8cm">
                                    <fo:block font-family="Roboto" font-size="4.2px" color="#02306E" text-align="center" margin-top="0.19cm" margin-bottom="0.02cm" >
                                        <xsl:value-of select="c:nameMinFr1"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="4.2px" color="#02306E" text-align="center"  margin-bottom="0.02cm">
                                        <xsl:value-of select="c:nameMinFr2"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="4.2px" color="#02306E" text-align="center"  margin-bottom="0.02cm">
                                        <xsl:value-of select="c:nameMinFr3"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="4.2px" color="#02306E" text-align="center"  margin-bottom="0.02cm">
                                        <xsl:value-of select="c:nameMinFr4"/>
                                    </fo:block>
                                    <fo:block font-family="Roboto" font-size="4.2px" color="#02306E" text-align="center"  margin-bottom="0.02cm">
                                        <xsl:value-of select="c:nameMinFr5"/>
                                    </fo:block>
                                    
                                </fo:table-cell>
                                <fo:table-cell width="1cm" >
                                    <xsl:if test="c:logoMin">
                                        <fo:block margin-top="0.1cm" margin-left="-0.33cm">
                                            <fo:external-graphic 
                                                src="logo-maroc.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="0.8cm"
                                                height="0.55cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                </fo:table-cell>
                                
                                
                                <fo:table-cell width="3.3cm" height="1cm" margin-right="1cm">
                                    <fo:block font-family="Arial" font-size="7.2px"
                                        color="#02306E" text-align="center" margin-top="0.2cm" margin-bottom="-0.02cm"                                         >
                                        <xsl:value-of select="c:nameMinAr1"/>
                                        
                                    </fo:block>
                                    
                                    <fo:block font-family="Arial" font-size="7.2px"
                                        color="#02306E" text-align="center"  margin-bottom="-0.02cm" 
                                       >
                                        <xsl:value-of select="c:nameMinAr2"/>
                                    </fo:block>
                                    <fo:block font-family="Arial" font-size="7.2px"
                                        color="#02306E" text-align="center"  margin-bottom="-0.02cm" 
                                       >
                                        <xsl:value-of select="c:nameMinAr3"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    <!--==================================-->
                    
                    
                    <!--Body -->
                    <fo:table table-layout="fixed">
                        <fo:table-column column-width="1.5cm"/>
                        <fo:table-column column-width="1.5cm"/>
                        <fo:table-column column-width="1.5cm"/>
                        <fo:table-column column-width="1.5cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                
                                <fo:table-cell width="1.5cm" height="1cm" margin-right="0.8cm">  
                                    <fo:block width="1.5cm" margin-left="0.5cm" margin-top="0.1cm" >
                                        <fo:instream-foreign-object>
                                            <svg width="115" height="87" viewBox="0 0 201 162" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="9.92291" y="73.5532" width="82.257" height="88.1968" rx="11.75" fill="white" stroke="#DE8240" stroke-width="0.5"/>
                                                <path d="M5.52002 71.6087C11.5438 75.2142 16.1695 82.6359 23.2156 85.4082C39.56 91.8391 67.62 89.687 77.1944 85.0178L80.04 83.6609L82.8 81.9391L86.0898 79.6781C88.18 78.3446 89.9451 77.1253 91.8226 75.5853C93.2499 74.4146 96.6 73.4735 96.6 71.6087" stroke="#DE8240" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <rect y="63" width="115" height="14.3348" fill="white"/>
                                                <path d="M87.6187 42C87.6187 63.3987 70.0957 80.75 48.4748 80.75C26.8538 80.75 9.33081 63.3987 9.33081 42C9.33081 20.6013 26.8538 3.25 48.4748 3.25C70.0957 3.25 87.6187 20.6013 87.6187 42Z" stroke="#D35900" stroke-width="0.5"/>
                                                <path d="M86.8586 43H103.02" stroke="#DE8240" stroke-width="0.7"/>
                                                <rect x="81.8081" y="21" width="102.02" height="21" fill="white"/>
                                                <rect width="113.893" height="19.7768" transform="matrix(0.885763 0.464138 -0.471484 0.881875 82.3245 0)" fill="white"/>
                                                <rect x="151.505" y="116" width="49.4949" height="16" rx="4" fill="white"/>
                                                <circle cx="104.01" cy="43" r="2" fill="#CB5500"/>
                                                <ellipse cx="48.9798" cy="42.5" rx="32.8283" ry="32.5" fill="#013172"/>
                                            </svg>
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    
                                    <xsl:if test="c:EngageIcon">
                                        <fo:block margin-top="-1.77cm" margin-left="0.9cm" >
                                            <fo:external-graphic 
                                                src="engag1.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="0.45cm"
                                                height="0.45cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                    
                                    <fo:block height =" 0.5cm" font-family="Sans-serif" font-size="4.3px" font-weight="bold"
                                        color="#02306E" text-align="center" margin-top="0.5cm" margin-left="1.15cm"
                                        letter-spacing="0.01cm"
                                        margin-bottom="0.02cm" >
                                        <xsl:value-of select="c:EngageText"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                                
                                <fo:table-cell width="1.5cm" height="1cm" margin-right="0.8cm">  
                                    <fo:block width="1.5cm" margin-left="0.4cm" margin-top="0.1cm" >
                                        <fo:instream-foreign-object>
                                            <svg width="115" height="87" viewBox="0 0 201 162" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="9.92291" y="73.5532" width="82.257" height="88.1968" rx="11.75" fill="white" stroke="#DE8240" stroke-width="0.5"/>
                                                <path d="M5.52002 71.6087C11.5438 75.2142 16.1695 82.6359 23.2156 85.4082C39.56 91.8391 67.62 89.687 77.1944 85.0178L80.04 83.6609L82.8 81.9391L86.0898 79.6781C88.18 78.3446 89.9451 77.1253 91.8226 75.5853C93.2499 74.4146 96.6 73.4735 96.6 71.6087" stroke="#DE8240" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <rect y="63" width="115" height="14.3348" fill="white"/>
                                                <path d="M87.6187 42C87.6187 63.3987 70.0957 80.75 48.4748 80.75C26.8538 80.75 9.33081 63.3987 9.33081 42C9.33081 20.6013 26.8538 3.25 48.4748 3.25C70.0957 3.25 87.6187 20.6013 87.6187 42Z" stroke="#D35900" stroke-width="0.5"/>
                                                <path d="M86.8586 43H103.02" stroke="#DE8240" stroke-width="0.7"/>
                                                <rect x="81.8081" y="21" width="102.02" height="21" fill="white"/>
                                                <rect width="113.893" height="19.7768" transform="matrix(0.885763 0.464138 -0.471484 0.881875 82.3245 0)" fill="white"/>
                                                <rect x="151.505" y="116" width="49.4949" height="16" rx="4" fill="white"/>
                                                <circle cx="104.01" cy="43" r="2" fill="#CB5500"/>
                                                <ellipse cx="48.9798" cy="42.5" rx="32.8283" ry="32.5" fill="#0A437C"/>
                                                <circle cx="49" cy="42" r="20" fill="#135797"/>
                                            </svg>
                                            
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    
                                    <xsl:if test="c:EspritEqIcon">
                                        <fo:block margin-top="-1.73cm" margin-left="0.88cm" >
                                            <fo:external-graphic 
                                                src="EsEQ.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="0.4cm"
                                                height="0.3cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                    
                                    <fo:block height =" 0.5cm" font-family="Sans-serif" font-size="4.3px" font-weight="bold"
                                        color="#135797" text-align="center" margin-top="0.55cm" margin-left="1.07cm"
                                        letter-spacing="0.01cm"
                                        margin-bottom="0.02cm" >
                                        <xsl:value-of select="c:EspritEqText"/>
                                    </fo:block>
                                    
                                </fo:table-cell>
                                
                                
                                
                                <fo:table-cell width="1.5cm" height="1cm" margin-right="0.8cm">  
                                    <fo:block width="1.5cm" margin-left="0.3cm" margin-top="0.1cm" >
                                        <fo:instream-foreign-object>
                                            <svg width="115" height="87" viewBox="0 0 201 162" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="9.92291" y="73.5532" width="82.257" height="88.1968" rx="11.75" fill="white" stroke="#DE8240" stroke-width="0.5"/>
                                                <path d="M5.52002 71.6087C11.5438 75.2142 16.1695 82.6359 23.2156 85.4082C39.56 91.8391 67.62 89.687 77.1944 85.0178L80.04 83.6609L82.8 81.9391L86.0898 79.6781C88.18 78.3446 89.9451 77.1253 91.8226 75.5853C93.2499 74.4146 96.6 73.4735 96.6 71.6087" stroke="#DE8240" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <rect y="63" width="115" height="14.3348" fill="white"/>
                                                <path d="M87.6187 42C87.6187 63.3987 70.0957 80.75 48.4747 80.75C26.8538 80.75 9.33081 63.3987 9.33081 42C9.33081 20.6013 26.8538 3.25 48.4747 3.25C70.0957 3.25 87.6187 20.6013 87.6187 42Z" stroke="#D35900" stroke-width="0.5"/>
                                                <path d="M86.8586 43H103.02" stroke="#DE8240" stroke-width="0.7"/>
                                                <rect x="81.8081" y="21" width="102.02" height="21" fill="white"/>
                                                <rect width="113.893" height="19.7768" transform="matrix(0.885763 0.464138 -0.471484 0.881875 82.3244 0)" fill="white"/>
                                                <rect x="151.505" y="116" width="49.4949" height="16" rx="4" fill="white"/>
                                                <circle cx="104.01" cy="43" r="2" fill="#CB5500"/>
                                                <ellipse cx="48.9798" cy="42.5" rx="32.8283" ry="32.5" fill="#167CBB"/>
                                                <circle cx="49" cy="42" r="20" fill="#4B9BCE"/>
                                            </svg>
                                            
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    
                                    <xsl:if test="c:EspritInIcon">
                                        <fo:block margin-top="-1.73cm" margin-left="0.79cm">
                                            <fo:external-graphic 
                                                src="ESIN.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="0.3cm"
                                                height="0.3cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                    
                                    <fo:block height =" 0.5cm" font-family="Sans-serif" font-size="4.3px" font-weight="bold"
                                        color="#167CBB" text-align="center" margin-top="0.55cm" margin-left="0.97cm"
                                        letter-spacing="0.01cm"
                                        margin-bottom="0.02cm" >
                                        <xsl:value-of select="c:EspritInTexte"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                                
                                
                                <fo:table-cell width="1.5cm" height="1cm" margin-right="0.8cm">  
                                    <fo:block width="1.5cm" margin-left="0.2cm" margin-top="0.1cm" >
                                        <fo:instream-foreign-object>
                                            <svg width="115" height="87" viewBox="0 0 201 162" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect x="9.92291" y="73.5532" width="82.257" height="88.1968" rx="11.75" fill="white" stroke="#DE8240" stroke-width="0.5"/>
                                                <path d="M5.52002 71.6087C11.5438 75.2142 16.1695 82.6359 23.2156 85.4082C39.56 91.8391 67.62 89.687 77.1944 85.0178L80.04 83.6609L82.8 81.9391L86.0898 79.6781C88.18 78.3446 89.9451 77.1253 91.8226 75.5853C93.2499 74.4146 96.6 73.4735 96.6 71.6087" stroke="#DE8240" stroke-width="0.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <rect y="63" width="115" height="14.3348" fill="white"/>
                                                <path d="M87.6187 42C87.6187 63.3987 70.0957 80.75 48.4748 80.75C26.8538 80.75 9.33081 63.3987 9.33081 42C9.33081 20.6013 26.8538 3.25 48.4748 3.25C70.0957 3.25 87.6187 20.6013 87.6187 42Z" stroke="#D35900" stroke-width="0.5"/>
                                                <path d="M86.8586 43H103.02" stroke="#DE8240" stroke-width="0.7"/>
                                                <rect x="81.8081" y="21" width="102.02" height="21" fill="white"/>
                                                <rect width="113.893" height="19.7768" transform="matrix(0.885763 0.464138 -0.471484 0.881875 82.3245 0)" fill="white"/>
                                                <rect x="151.505" y="116" width="49.4949" height="16" rx="4" fill="white"/>
                                                <circle cx="104.01" cy="43" r="2" fill="#CB5500"/>
                                                <ellipse cx="48.9798" cy="42.5" rx="32.8283" ry="32.5" fill="#65AED8"/>
                                                <circle cx="49" cy="42" r="20" fill="#6DB1F2"/>
                                            </svg>                                            
                                            
                                        </fo:instream-foreign-object>
                                    </fo:block>
                                    
                                    <xsl:if test="c:TransIcon">
                                        <fo:block margin-top="-1.86cm" margin-left="0.45cm" >
                                            <fo:external-graphic 
                                                src="trans.png" 
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                width="0.8cm"
                                                height="0.55cm"
                                                scaling="non-uniform"
                                                
                                            />
                                        </fo:block>
                                    </xsl:if>
                                    
                                    
                                    <fo:block height =" 0.5cm" font-family="Sans-serif" font-size="4.3px" font-weight="bold"
                                        color="#65AED8" text-align="center" margin-top="0.5cm" margin-left="0.87cm"
                                        letter-spacing="0.01cm"
                                        margin-bottom="0.02cm" >
                                        <xsl:value-of select="c:TransTexte"/>
                                    </fo:block>
                                </fo:table-cell>
                                
                               
                                
                                
                                
                            </fo:table-row>
                        </fo:table-body>
                        
                    </fo:table>
                    
                    <!-- ======================= -->
                    
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
</xsl:stylesheet>