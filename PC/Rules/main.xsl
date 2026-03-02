<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:decimal-format name="dformat" decimal-separator="." grouping-separator=","/>

  <!--Include templates/rules for: attributes-->
  <xsl:include href="attributeRules.xsl"/>

  <!--Include templates/rules for: styles-->
  <xsl:include href="textStyle.xsl"/>
  <xsl:include href="simpleLineStyle.xsl"/>

  <!--Include templates/rules for: csps-->
  
  <!--
  <xsl:include href="AtoNStatusInformation.xsl"/>
  
  -->
  
  <!--
  
  <xsl:include href="Obstruction.xsl"/>
  <xsl:include href="UnderWaterAwashRock.xsl"/>
  <xsl:include href="LightDescription.xsl"/>
  <xsl:include href="Lights.xsl"/>
  <xsl:include href="topmarks.xsl"/>
  <xsl:include href="seabed01.xsl"/>
  <xsl:include href="natsur01.xsl"/>
  <xsl:include href="rescsp03.xsl"/>
  <xsl:include href="slcons04.xsl"/>
  <xsl:include href="depare04.xsl"/>
  <xsl:include href="Depcnt03.xsl"/>
  <xsl:include href="qualin03.xsl"/>
  <xsl:include href="quapnt02.xsl"/>
  <xsl:include href="safcon02.xsl"/>
  <xsl:include href="soundg02.xsl"/>
  <xsl:include href="sndfrm04.xsl"/>
  <xsl:include href="Wreck.xsl"/>
  
  -->
  
  <xsl:include href="AtoNStatusInformation.xsl"/>
  <xsl:include href="AtoNStatusIndication.xsl"/>
  
  <!--
  <xsl:include href="LightSectored.xsl"/>
  <xsl:include href="Landmark.xsl"/>
  <xsl:include href="NavigationalSystemOfMarks.xsl"/>
  -->
  
  <xsl:include href="DataCoverage.xsl"/>
  
  <!--
  <xsl:include href="QualityOfNonBathymetricData.xsl"/>
  <xsl:include href="SoundingDatum.xsl"/>
  <xsl:include href="Topmark.xsl"/>
  <xsl:include href="LightHouse.xsl"/>
  <xsl:include href="CardinalBeacon.xsl"/>
  <xsl:include href="IsolatedDangerBeacon.xsl"/>
  <xsl:include href="LateralBeacon.xsl"/>
  <xsl:include href="SafeWaterBeacon.xsl"/>
  <xsl:include href="SpecialPurposeGeneralBeacon.xsl"/>
  <xsl:include href="CardinalBuoy.xsl"/>
  <xsl:include href="InstallationBuoy.xsl"/>
  <xsl:include href="IsolatedDangerBuoy.xsl"/>
  <xsl:include href="LateralBuoy.xsl"/>
  <xsl:include href="SafeWaterBuoy.xsl"/>
  <xsl:include href="SpecialPurposeGeneralBuoy.xsl"/>
  <xsl:include href="DeepWaterRouteCentreline.xsl"/>
  <xsl:include href="DeepWaterRoutePart_PLAIN_BOUNDARIES.xsl"/>
  <xsl:include href="DeepWaterRoutePart_SYMBOLIZED_BOUNDARIES.xsl"/>
  <xsl:include href="FloatingDock.xsl"/>
  <xsl:include href="FogSignal.xsl"/>
  <xsl:include href="Landmark.xsl"/>
  <xsl:include href="LightFloat.xsl"/>
  <xsl:include href="LightSectored.xsl"/>
  <xsl:include href="LightVessel.xsl"/>
  <xsl:include href="OffshorePlatform.xsl"/>
  <xsl:include href="OffshoreProductionArea_PLAIN_BOUNDARIES.xsl"/>
  <xsl:include href="OffshoreProductionArea_SYMBOLIZED_BOUNDARIES.xsl"/>
  <xsl:include href="Pile.xsl"/>
  -->
  
  <!--
  <xsl:include href="RadarLine.xsl"/>
  <xsl:include href="RadarRange.xsl"/>
  <xsl:include href="RadarReflector.xsl"/>
  <xsl:include href="RadioStation.xsl"/>
  <xsl:include href="RadarStation.xsl"/>
  <xsl:include href="RadarTransponderBeacon.xsl"/>
  <xsl:include href="Retroreflector.xsl"/>
  <xsl:include href="SeaAreaNamedWaterArea.xsl"/>
  <xsl:include href="SignalStationTraffic.xsl"/>
  <xsl:include href="SignalStationWarning.xsl"/>
  <xsl:include href="SiloTank.xsl"/>
  <xsl:include href="UnderWaterAwashRock.xsl"/>
  <xsl:include href="Waterfall.xsl"/>
  <xsl:include href="WaterTurbulence.xsl"/>
  <xsl:include href="Topmark.xsl"/>
  
  -->
  
  <xsl:param name="TWO_SHADES">true</xsl:param>
  <xsl:param name="SAFETY_DEPTH" select="30.0"/>
  <xsl:param name="SAFETY_CONTOUR" select="30.0"/>
  <xsl:param name="SHALLOW_CONTOUR" select="2.0"/>
  <xsl:param name="DEEP_CONTOUR" select="30.0"/>
  <xsl:param name="SHALLOW_PATTERN">false</xsl:param>
  <xsl:param name="SHOW_ISOLATED_DANGERS_IN_SHALLOW_WATERS">false</xsl:param>
  <xsl:param name="FULL_SECTORS">false</xsl:param>
  <xsl:param name="ATON_STATUS_SYMBOL_MODE">true</xsl:param>

  <xsl:template match="/">
    <displayList>
      <xsl:apply-templates select="Dataset/Features/*"/>
    </displayList>
  </xsl:template>
</xsl:transform>
