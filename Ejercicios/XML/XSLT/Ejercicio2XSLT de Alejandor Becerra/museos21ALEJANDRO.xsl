<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="//museos">
		<xsl:element name="museos">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="//museo">
		<xsl:element name="museo">
			<xsl:attribute name="ubicacion">
				<xsl:value-of select="@ciudad"/>
				<xsl:value-of select="@pais"/>
			</xsl:attribute>
			<xsl:value-of select="@nombre"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>