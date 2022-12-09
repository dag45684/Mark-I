<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/paises">
        <html>
            <head>
                <title>Paises</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>pais</th>
                        <th>continente</th>
                        <th>capital</th>
                        <th>superficie</th>
                        <th>poblacion</th>
                        <th>ciudades</th>
                        <th>lengua</th>
                        <th>religion</th>
                        <th>moneda</th>
                        <th>gobierno</th>
                    </tr>
                    <xsl:for-each select="pais">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="continente" />
                            </td>
                            <td>
                                <xsl:value-of select="capital" />
                            </td>
                            <td>
                                <xsl:value-of select="superficie" />
                            </td>
                            <td>
                                <xsl:value-of select="poblacion" />
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="ciudades/ciudad">
                                        <li>
                                            <xsl:value-of select="." />
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="lenguas/lengua">
                                        <li>
                                            <xsl:value-of select="." />
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="religiones/religion">
                                        <li>
                                            <xsl:value-of select="." />
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <xsl:value-of select="moneda" />
                            </td>
                            <td>
                                <xsl:value-of select="gobierno" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>