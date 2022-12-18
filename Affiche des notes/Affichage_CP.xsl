<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <table>
                <tr>
                    <th style="margin-left: 20px"><img src="logoUae.png" width="110" height="100" /></th>
                    <th style="margin-left: 105px"><h1 style="color : #0F4494;font-family: Podkova">ECOLE NATIONAL DES SCIENCES APPLIQUEE DE TANGER </h1></th>
                  
                    <th style="margin-left: 80px"><img src="ensa.png" width="150" height="100"/></th>
                </tr>
            </table>
            <center>
                <body>
                    
                    <h2>AFFICHAGE DU MODULE AP11 (Avant Rattrapage)</h2>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>CNE</th>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>ClassName</th>
                            <th>ModuleName</th>
                            <th>Note</th>
                        </tr>
                        <xsl:for-each select="notes/note">
                            <tr>
                                <td><xsl:value-of select="CNE"/></td>
                                <td><xsl:value-of select="FirstName"/></td>
                                <td><xsl:value-of select="LastName"/></td>
                                <td>CP1</td>
                                <td>ANALYSE 1</td>
                                <xsl:if test="NoteElement &lt; 7">
                                    <td bgcolor="FF0000"><xsl:value-of select="NoteElement"/></td>
                                </xsl:if>
                                <xsl:if test="NoteElement &gt;= 7 and NoteElement &lt; 10">
                                    <td bgcolor="#FFA500"><xsl:value-of select="NoteElement"/></td>
                                </xsl:if>
                                <xsl:if test="NoteElement &gt;= 10">
                                    <td bgcolor="00FF00"><xsl:value-of select="NoteElement"/></td>
                                </xsl:if>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br/>
                    <br/>
                    <br/>
                    <hr/>
                    <br/>
                    <br/>
                    <h2>la liste des étudiants qui doivent passer le rattrapage pour le Module AP11</h2>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>CNE</th>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>ClassName</th>
                            <th>ModuleName</th>
                            <th>Note</th>
                        </tr>
                        <xsl:for-each select="notes/note">
                            <xsl:if test="NoteElement &lt; 12">
                                <tr>
                                    <td><xsl:value-of select="CNE"/></td>
                                    <td><xsl:value-of select="FirstName"/></td>
                                    <td><xsl:value-of select="LastName"/></td>
                                    <td>CP1</td>
                                    <td>ANALYSE 1</td>
                                    <td><xsl:value-of select="NoteElement"/></td>
                                </tr>
                            </xsl:if>
                            
                        </xsl:for-each>
                    </table>
                    <br/>
                    <br/>
                    <br/>
                    <hr/>
                    <br/>
                    <br/>
                    <h2>AFFICHAGE FINALE DU MODULE AP11 (Résultat après le rattrapage)</h2>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>CNE</th>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>ClassName</th>
                            <th>ModuleName</th>
                            <th>Résultat</th>
                        </tr>
                        <xsl:for-each select="notes/note">
                            <tr>
                                <td><xsl:value-of select="CNE"/></td>
                                <td><xsl:value-of select="FirstName"/></td>
                                <td><xsl:value-of select="LastName"/></td>
                                <td>CP1</td>
                                <td>ANALYSE 1</td>
                                <xsl:if test="NoteElement &lt; 7">
                                    <td bgcolor="FF0000">NE</td>
                                </xsl:if>
                                <xsl:if test="NoteElement &gt;= 7 and NoteElement &lt; 10">
                                    <td bgcolor="#FFA500">NV</td>
                                </xsl:if>
                                <xsl:if test="NoteElement &gt;= 10">
                                    <td bgcolor="00FF00">V</td>
                                </xsl:if>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br/>
                </body>
            </center>
        </html>
    </xsl:template>
</xsl:stylesheet>