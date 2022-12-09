<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/ciudades">
    <html>
        <head> Ciudades </head>
        <body>
            <xsl:for-each select="ciudad">
                <h1><xsl:value-of select="nombre"/> </h1>
                <h3><xsl:value-of select="habitantes"/> </h3>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
