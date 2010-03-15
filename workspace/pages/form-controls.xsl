<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/form-controls.xsl"/>

<!-- Define a global variable pointing to your Event -->
<xsl:variable name="form:event" select="/data/events/save-user"/>

<xsl:template match="data">

	<xsl:call-template name="form:validation-summary"/>
	<fieldset class="primary">
		<xsl:for-each select="/data/section-schema[@handle = 'users']/*[@location = 'main']">
			<xsl:call-template name="symphony-field" />
		</xsl:for-each>
	</fieldset>
	<fieldset class="secondary">
		<xsl:for-each select="/data/section-schema[@handle = 'users']/*[@location = 'sidebar']">
			<xsl:call-template name="symphony-field" />
		</xsl:for-each>
	</fieldset>

	<div class="actions">
		<input name="action[save-user]" accesskey="s" type="submit" value="Create Entry" />
	</div>

</xsl:template>

<xsl:template name="symphony-field">
	<div>
		<xsl:attribute name="class">
			<xsl:text>field </xsl:text>
			<xsl:value-of select="concat('field-', @type)" />
			<xsl:if test="@required = 'yes'"><xsl:text> </xsl:text>required</xsl:if>
		</xsl:attribute>
		<label><xsl:value-of select="@label" />
			<xsl:choose>
				<xsl:when test="@type = 'input'">
					<xsl:if test="@required = 'no'"><i>Optional</i></xsl:if>
					<xsl:call-template name="form:input">
						<xsl:with-param name="handle" select="name(current())"/>
					</xsl:call-template>
				</xsl:when>
				<xsl:when test="@type = 'select' or @type = 'selectbox_link'">
					<xsl:choose>
						<xsl:when test="allow-multiple-selection = 'yes'">
							<xsl:call-template name="form:select">
								<xsl:with-param name="handle" select="name(current())"/>
								<xsl:with-param name="options" select="options/option"/>
								<xsl:with-param name="value" select="options/option[1]"/>
								<xsl:with-param name="allow-multiple" select="1"/>
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="form:select">
								<xsl:with-param name="handle" select="name(current())"/>
								<xsl:with-param name="options" select="options/option"/>
								<xsl:with-param name="value" select="options/option[1]"/>
								<xsl:with-param name="allow-multiple" select="0"/>
							</xsl:call-template>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:when test="@type = 'textarea'">
					<xsl:if test="@required = 'no'"><i>Optional</i></xsl:if>
					<xsl:call-template name="form:textarea">
					    <xsl:with-param name="handle" select="name(current())"/>
					    <xsl:with-param name="rows" select="'15'"/>
					    <xsl:with-param name="cols" select="'50'"/>
					</xsl:call-template>
				</xsl:when>
			</xsl:choose>
		</label>
	</div>
</xsl:template>

</xsl:stylesheet>