<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/section-entries.xsl"/>

<!-- Define a global variable for the section data -->
<xsl:variable name="section-data" select="/data/status/entry"/>
<!-- Define a global variable for the event action -->
<xsl:variable name="event-action" select="'save-status'"/>

<xsl:template match="data">
	<xsl:call-template name="section-entries"/>
</xsl:template>

</xsl:stylesheet>