<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" version="4.01" indent="yes"/>
    <xsl:output doctype-system="http://www.w3.org/TR/html4/strict.dtd"/>
    <xsl:output doctype-public="-//W3C//DTD HTML 4.01//EN"/>
    <xsl:template match="/">
        <html>
            <center>
                <table>
                    <tr>
                        <th style="margin-left: 20px"><img src="logoUae.png" width="110" height="100" /></th>
                        <th style="margin-left: 105px"><h1 style="color : #0F4494;font-family: Podkova">ECOLE NATIONAL DES SCIENCES APPLIQUEE DE TANGER </h1></th>
                        
                        <th style="margin-left: 80px"><img src="ensa.png" width="150" height="100"/></th>
                    </tr>
                </table>
            <body>
              
                <h2>AFFICHAGE DU MODULE GINF31 (Avant Rattrapage)</h2>
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
                            <td><xsl:value-of select="ClassName"/></td>
                            <td><xsl:value-of select="ModuleName"/></td>
                            <xsl:if test="NoteElement &lt; 8">
                                <td bgcolor="FF0000"><xsl:value-of select="NoteElement"/></td>
                            </xsl:if>
                            <xsl:if test="NoteElement &gt;= 8 and NoteElement &lt; 12">
                                <td bgcolor="#FFA500"><xsl:value-of select="NoteElement"/></td>
                            </xsl:if>
                            <xsl:if test="NoteElement &gt;= 12">
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
                <h2>la liste des étudiants qui doivent passer le rattrapage pour le Module GINF31</h2>
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
                                <td><xsl:value-of select="ClassName"/></td>
                                <td><xsl:value-of select="ModuleName"/></td>
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
                <h2>AFFICHAGE DU MODULE GINF31 (Résultat après le rattrapage)</h2>
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
                            <td><xsl:value-of select="ClassName"/></td>
                            <td><xsl:value-of select="ModuleName"/></td>
                            <xsl:if test="NoteElement &lt; 8">
                                <td bgcolor="FF0000">NE</td>
                            </xsl:if>
                            <xsl:if test="NoteElement &gt;= 8 and NoteElement &lt; 12">
                                <td bgcolor="#FFA500">NV</td>
                            </xsl:if>
                            <xsl:if test="NoteElement &gt;= 12">
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