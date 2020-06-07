<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="//museos">
		<xsl:element name="museos">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="//museo">
		<xsl:element name="museo">
			<xsl:attribute name="nombre">
				<xsl:value-of select="nombre"/>
			</xsl:attribute>
			<xsl:attribute name="ciudad">
				<xsl:value-of select="ciudad"/>
			</xsl:attribute>
			<xsl:attribute name="pais">
				<xsl:value-of select="pais"/>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>