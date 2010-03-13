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
		<a href="{$root}/"><xsl:value-of select="$website-name"/></a>
	</h1>
	<ul id="nav">
		<li>Sections
			<ul>
				<xsl:for-each select="/data/navigation/page[types/type = 'admin']">
					<li>
						<a href="{$root}/{@handle}/"><xsl:value-of select="name" /></a>
					</li>
				</xsl:for-each>
			</ul>
		</li>
	</ul>
</xsl:template>

</xsl:stylesheet>