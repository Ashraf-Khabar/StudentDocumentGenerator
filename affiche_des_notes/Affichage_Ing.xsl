<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="1.0">
    <xsl:template match="/">
        <html>
            <center>
                <table style="border-collapse: collapse">
                    <tr>
                        <th style="margin-left: 40px">
                            <img src="../templates/img/logoUae.png" width="100" height=""/>
                        </th>
                        <th style="margin-left: 105px">
                            <h1 style="color : #152e55;font-family: Bitstream Vera Sans Mono, Monaco, Courier New, Courier, monospace">ECOLE NATIONAL DES SCIENCES APPLIQUEE DE
                                TANGER
                            </h1>
                        </th>

                        <th style="margin-left: 80px">
                            <img src="./img/ensa.png" width="150" height="100"/>
                        </th>
                    </tr>
                </table>
                <body>

                    <h2>Affichage du module GINF31 (Avant Rattrapage)</h2>
                    <table border="1" style="border-collapse: collapse" >
                        <tr bgcolor="#0c344f">
                            <th style="color: aliceblue" >CNE</th>
                            <th style="color: aliceblue" >FirstName</th>
                            <th style="color: aliceblue" >LastName</th>
                            <th style="color: aliceblue">ClassName</th>
                            <th style="color: aliceblue" >ModuleName</th>
                            <th style="color: aliceblue">Note</th>
                        </tr>
                        <xsl:for-each select="notes/note">
                            <tr>
                                <td>
                                    <xsl:value-of select="CNE"/>
                                </td>
                                <td>
                                    <xsl:value-of select="FirstName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="LastName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ClassName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ModuleName"/>
                                </td>
                                <xsl:if test="NoteElement &lt; 8">
                                    <td bgcolor="FF0000">
                                        <xsl:value-of select="NoteElement"/>
                                    </td>
                                </xsl:if>
                                <xsl:if test="NoteElement &gt;= 8 and NoteElement &lt; 12">
                                    <td bgcolor="#FFA500">
                                        <xsl:value-of select="NoteElement"/>
                                    </td>
                                </xsl:if>
                                <xsl:if test="NoteElement &gt;= 12">
                                    <td bgcolor="00FF00">
                                        <xsl:value-of select="NoteElement"/>
                                    </td>
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
                    <table border="1" style="border-collapse: collapse">
                        <tr bgcolor="#0c344f">
                            <th style="color: aliceblue">CNE</th>
                            <th style="color: aliceblue">FirstName</th>
                            <th style="color: aliceblue">LastName</th>
                            <th style="color: aliceblue">ClassName</th>
                            <th style="color: aliceblue">ModuleName</th>
                            <th style="color: aliceblue">Note</th>
                        </tr>
                        <xsl:for-each select="notes/note">
                            <xsl:if test="NoteElement &lt; 12">
                                <tr>
                                    <td>
                                        <xsl:value-of select="CNE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="FirstName"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="LastName"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="ClassName"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="ModuleName"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="NoteElement"/>
                                    </td>
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
                    <h2>Affichage du module GINF31 (Résultat après le rattrapage)</h2>
                    <table border="1" style="border-collapse: collapse">
                        <tr bgcolor="#0c344f">
                            <th style="color: aliceblue">CNE</th>
                            <th style="color: aliceblue">FirstName</th>
                            <th style="color: aliceblue">LastName</th>
                            <th style="color: aliceblue">ClassName</th>
                            <th style="color: aliceblue">ModuleName</th>
                            <th style="color: aliceblue">Résultat</th>
                        </tr>
                        <xsl:for-each select="notes/note">
                            <tr>
                                <td>
                                    <xsl:value-of select="CNE"/>
                                </td>
                                <td>
                                    <xsl:value-of select="FirstName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="LastName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ClassName"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ModuleName"/>
                                </td>
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