<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:decimal-format name="dformat" decimal-separator="." grouping-separator=","/>

  <!--Include templates/rules for: csps-->
  
  <xsl:include href="AtoNStatusInformation.xsl"/>
  <xsl:include href="AtoNStatusIndication.xsl"/>
  <xsl:include href="DataCoverage.xsl"/>
  
  <xsl:param name="ATON_STATUS_SYMBOL_MODE">true</xsl:param>

  <xsl:template match="/">
    <displayList>
      <xsl:apply-templates select="Dataset/Features/*"/>
    </displayList>
  </xsl:template>
</xsl:transform>
