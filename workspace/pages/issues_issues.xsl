<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:import href="../utilities/form-master.xsl"/>
<xsl:import href="../utilities/form-controls.xsl"/>
<xsl:import href="../utilities/section-entries.xsl"/>
<xsl:import href="../utilities/section-schemas.xsl"/>

<!-- Define a global variable for the section data -->
<xsl:variable name="section-data" select="/data/issues/entry"/>
<!-- Define a global variable for the event action -->
<xsl:variable name="event-action" select="'save-issue'"/>
<!-- A global variable pointing to your event is defined based on the event action -->
<xsl:variable name="form:event" select="/data/events/*[name()=$event-action]"/>

<xsl:template match="data">
	<xsl:choose>
		<xsl:when test="$action">
			<xsl:choose>
				<xsl:when test="$action = 'new' or $action = 'edit'">
					<xsl:apply-templates select="section-schema" mode="form"/>
				</xsl:when>
				<xsl:otherwise>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="entries-list"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>