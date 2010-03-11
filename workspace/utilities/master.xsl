<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<html lang="en">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<title>Symphony</title>
			<link rel="stylesheet" type="text/css" media="screen" href="{$root}/symphony/assets/forms.css" />
			<script type="text/javascript" src="{$root}/symphony/assets/jquery.js"></script>
			<script type="text/javascript" src="{$root}/symphony/assets/admin.js"></script>
		</head>
		<body>
			<xsl:apply-templates />
		</body>
	</html>
</xsl:template>

<xsl:template name="header">
	<h1>
		<a href="{$root}/">Symphony CMS</a>
	</h1>
	<ul id="nav">
		<li>Sections
			<ul>
				<xsl:for-each select="/data/navigation/page[types/type != 'index']">
					<li>
						<a href="{$root}/{@handle}/"><xsl:value-of select="name" /></a>
					</li>
				</xsl:for-each>
			</ul>
		</li>
	</ul>
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