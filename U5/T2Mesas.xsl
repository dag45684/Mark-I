<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/catalogo">
    <head><title>IKEA</title></head>
    <body>
        <h1>Mesas...</h1>
        <xsl:for-each select="/catalogo/producto">
            <li> <xsl:value-of select="nombre"> </xsl:value-of></li>
            <ul>
                <li> Calidad: <xsl:value-of select="calidad/@valor"/></li>
                <li> <xsl:value-of select="descripcion"/></li>
                <li> <xsl:value-of select="precio"/></li>
            </ul>
        </xsl:for-each>
    </body>
</xsl:template>
</xsl:stylesheet>