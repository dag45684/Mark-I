<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/coches">
    <html>
        <head>
        Coches
        </head>
        <body>
            <h1>Listado de coches</h1>
            <table border="1">
                <tr>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Potencia</th>
                </tr>
                <xsl:for-each select="coche">
                    <xsl:sort order="descending" data-type="number" select="potencia"/>
                    <tr>
                        <td><xsl:value-of select="marca"/> </td>
                        <td><xsl:value-of select="modelo"/> </td>
                        <td><xsl:value-of select="potencia"/> </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
