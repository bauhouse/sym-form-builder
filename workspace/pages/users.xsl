<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/form-controls.xsl"/>
<xsl:import href="../utilities/section-schemas.xsl"/>

<!-- Define a global variable pointing to your Event -->
<xsl:variable name="event" select="/data/events/save-user"/>
<xsl:variable name="event-action" select="'save-user'"/>

<xsl:template match="data">
	<xsl:apply-templates select="section-schema[@handle='users']" mode="form"/>
</xsl:template>

</xsl:stylesheet>