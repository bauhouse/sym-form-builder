<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:date="http://exslt.org/dates-and-times"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="date exsl form">

<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<xsl:param name="month-abbr" select="date:month-abbreviation($today)"/>
	<xsl:param name="day-abbr" select="date:day-abbreviation($today)"/>
	<xsl:param name="this-time">
		<xsl:call-template name="format-time">
			<xsl:with-param name="time" select="$current-time"/>
			<xsl:with-param name="format" select="'t'"/>
		</xsl:call-template>
	</xsl:param>

	<html lang="en">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<title><xsl:value-of select="$website-name"/></title>
			<xsl:choose>
				<xsl:when test="$action">
					<link rel="stylesheet" type="text/css" media="screen" href="{$root}/symphony/assets/forms.css" />
				</xsl:when>
				<xsl:otherwise>
					<link rel="stylesheet" type="text/css" media="screen" href="{$root}/symphony/assets/tables.css" />
				</xsl:otherwise>
			</xsl:choose>
			<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/frontend-forms.css" />
			<script type="text/javascript" src="{$root}/symphony/assets/jquery.js"></script>
			<script type="text/javascript" src="{$root}/symphony/assets/admin.js"></script>
		</head>
		<body class="{$page-type}">
			<form action="" method="post">
				<xsl:if test="/data/events/*[@result = 'success']">
					<p id="notice" class="success">Entry updated at <abbr class="timeago" title="{$day-abbr}, {$this-day} {$month-abbr} {$this-year} {$current-time}:00 {$timezone}"><xsl:value-of select="$this-time"/></abbr>. <a href="{$root}/{$root-page}/{$current-page}/new/">Create another?</a> <a href="{$root}/{$root-page}/{$current-page}/">View all Entries</a></p>
				</xsl:if>
				<h1><a href="{$root}/"><xsl:value-of select="$website-name"/></a></h1>
				<xsl:apply-templates select="data/navigation"/>
				<xsl:apply-templates/>
				<xsl:call-template name="user-info"/>
			</form>
		</body>
	</html>
</xsl:template>

<xsl:template name="user-info">
	<xsl:choose>
		<xsl:when test="$is-logged-in">
			<ul id="usr">
				<li><a href="{$root}/symphony/system/authors/edit/{$user-id}/" title="{$user-type}"><xsl:value-of select="$name"/></a></li>
				<li><a href="{$root}/symphony/logout/">Logout</a></li>
			</ul>
		</xsl:when>
		<xsl:otherwise>
			<ul id="usr">
				<li><a href="{$root}/">Login</a></li>
			</ul>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>