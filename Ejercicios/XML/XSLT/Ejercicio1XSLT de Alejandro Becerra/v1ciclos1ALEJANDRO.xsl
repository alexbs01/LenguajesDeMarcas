<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- html, h1, p -->
	<xsl:template match="ies">
		<xsl:element name="html"> <!-- html -->
		
			<xsl:element name="h1"> <!-- h1 -->
				<xsl:value-of select="//ies/@nombre"/>
			</xsl:element>
			
			<xsl:element name="p"> <!-- p -->
				<xsl:value-of select="//ies/@web"/>
			</xsl:element>
		
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
<!-- ul	 -->
	<xsl:template match="ciclos">
		<xsl:element name="ul">
			<xsl:value-of select="ciclos"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
<!-- li -->
	<xsl:template match="ciclo">
		<xsl:element name="li">
			<xsl:value-of select="nombre"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
