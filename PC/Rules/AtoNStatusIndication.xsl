<?xml version="1.0" encoding="UTF-8"?>

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	
      <xsl:template match="AtonStatusIndication[@primitive='Point']" priority="2">
      <pointInstruction>
         <featureReference>
            <xsl:value-of select="@id"/>
         </featureReference>
         <viewingGroup>31020</viewingGroup>
         <displayPlane>OVERRADAR</displayPlane>
         <drawingPriority>15</drawingPriority>		 
		 <xsl:choose>
			<xsl:when test="changeTypes = '1'">
			  <symbol reference="CHNGAC02"/>
			</xsl:when>
			<xsl:when test="changeTypes = '2'">
			  <symbol reference="CHNGDC02"/>
			</xsl:when>
			<xsl:when test="changeTypes = '3'">
			  <symbol reference="CHNGPC02"/>
			</xsl:when>
			<xsl:when test="changeTypes = '4'">
			  <symbol reference="CHNGTC02"/>
			</xsl:when>
			<xsl:otherwise>
			  <symbol reference="QUESMRK1"/>
			</xsl:otherwise>
      </xsl:choose> 
      </pointInstruction>
   </xsl:template>

</xsl:transform>
