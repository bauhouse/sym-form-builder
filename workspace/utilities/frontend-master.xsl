<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:import href="../utilities/navigation.xsl"/>

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
			<title><xsl:value-of select="$website-name"/></title>
			<link rel="stylesheet" type="text/css" media="screen" href="{$root}/symphony/assets/forms.css" />
			<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/frontend-forms.css" />
		</head>
		<body class="{$page-type}">
			<form action="" method="post">
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