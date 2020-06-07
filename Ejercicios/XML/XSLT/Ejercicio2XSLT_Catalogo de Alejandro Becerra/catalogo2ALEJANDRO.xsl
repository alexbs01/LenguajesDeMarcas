<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:template match="Catálogo">
		<xsl:element name="Inventario">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="//Marca">
		<xsl:element name="fabricante">
			<xsl:attribute name="stock">
				<xsl:value-of select="count(./Portatil)"/>
			</xsl:attribute>
			<xsl:value-of select="./@nome"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
