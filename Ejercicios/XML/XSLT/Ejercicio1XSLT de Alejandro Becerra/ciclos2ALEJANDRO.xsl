<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="ciclos">
		<xsl:element name="html">
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>
	<xsl:template match="//ciclos/ciclo">
		<xsl:element name="p">
			<xsl:value-of select="nombre"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>