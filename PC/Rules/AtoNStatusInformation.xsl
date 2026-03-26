<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template name="AtoNStatusInformation">
        <xsl:param name="fid"/>
        <xsl:for-each select="AtoNStatus">
            <xsl:variable name="atonStatusID" select="@informationRef"/>
            <xsl:for-each select="/Dataset/InformationTypes/AtoNStatusInformation[@id=$atonStatusID]">
                <xsl:choose>
                    <xsl:when test="$ATON_STATUS_SYMBOL_MODE = 'true'">
                        <xsl:variable name="symbolRef">
                            <xsl:choose>
                                <xsl:when test="changeTypes = 1">CHNGAC02</xsl:when>
                                <xsl:when test="changeTypes = 2">CHNGDC02</xsl:when>
                                <xsl:when test="changeTypes = 3">CHNGCC01</xsl:when>
                                <xsl:when test="changeTypes = 4">CHNGTC02</xsl:when>
								<xsl:when test="changeTypes = 5">CHNGCC01</xsl:when>
                                <xsl:otherwise>UNKNOWN</xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <pointInstruction>
                            <featureReference>
                                <xsl:value-of select="$fid"/>
                            </featureReference>
                            <viewingGroup>27020</viewingGroup>
                            <displayPlane>overRadar</displayPlane>
                            <drawingPriority>24</drawingPriority>
                            <symbol reference="{$symbolRef}"/>
                        </pointInstruction>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:variable name="symbolRef">
                            <xsl:choose>
                                <xsl:when test="changeTypes = 1">CHNGAC02</xsl:when>
                                <xsl:when test="changeTypes = 2">CHNGDC02</xsl:when>
                                <xsl:when test="changeTypes = 3">CHNGCC01</xsl:when>
                                <xsl:when test="changeTypes = 4">CHNGTC02</xsl:when>
								<xsl:when test="changeTypes = 5">CHNGCC01</xsl:when>
                                <xsl:otherwise>UNKNOWN</xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <pointInstruction>
                            <featureReference>
                                <xsl:value-of select="$fid"/>
                            </featureReference>
                            <viewingGroup>27020</viewingGroup>
                            <displayPlane>overRadar</displayPlane>
                            <drawingPriority>24</drawingPriority>
                            <symbol reference="{$symbolRef}"/>
                        </pointInstruction>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
</xsl:transform>
