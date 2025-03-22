<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="text"/>
<xsl:template match="assignatura">
<xsl:value-of select="nom_assignatura"/> 
-------------------------------------------- 
<xsl:apply-templates select="alumnes/alumne"/>
</xsl:template>

<xsl:template match="alumne"><xsl:value-of select="nom"/> -- <xsl:value-of select="nota"/>
<xsl:text>&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>