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

    <form action="" method="post">
		<xsl:call-template name="header"/>

		<h2><xsl:value-of select="$page-title" /></h2>
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
		<ul id="usr">
			<li>
				<a href="{$root}/symphony/system/authors/edit/1/">Stephen Bau</a>
			</li>
			<li>
				<a href="{$root}/symphony/logout/">Logout</a>
			</li>
		</ul>
	</form>

</xsl:template>

</xsl:stylesheet>