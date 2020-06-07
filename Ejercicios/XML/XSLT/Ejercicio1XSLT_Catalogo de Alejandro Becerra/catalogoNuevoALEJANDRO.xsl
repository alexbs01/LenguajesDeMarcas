<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="Catalogo">
		<xsl:element name="catalogo">
			<xsl:apply-templates select="Portatil"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Portatil">
		<xsl:element name="Ordenador">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
