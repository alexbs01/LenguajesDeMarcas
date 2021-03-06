<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="//Catálogo">
		<xsl:element name="Equipamento">
			<xsl:element name="Portátiles">
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Portatil">
		<xsl:element name="Portatil">
			
			<xsl:attribute name="marca">
				<xsl:value-of select="../@nome"/>  <!-- Asigna el nombre a "marca" de una etiqueta padre -->
			</xsl:attribute>
			
			<xsl:element name="Ref">
				<xsl:value-of select="@ref"/>
			</xsl:element>
			
			<xsl:element name="Nome">
				<xsl:value-of select="Texto"/>
			</xsl:element>
			
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
