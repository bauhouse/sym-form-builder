<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:form="http://nick-dunn.co.uk/xslt/form">

<xsl:import href="../utilities/form-controls.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />


<xsl:variable name="event" select="/data/events/publish-article"/>

<xsl:template match="data">
	
	<style type="text/css">
		div#main, div#sidebar {
			width: 340px;
			float: left;
		}
		label {
			display: block;
			margin-bottom: 20px;
		}
		input, textarea, select {
			display: block;
			width: 300px;
		}
		label.checkbox input {
			display: inline;
			width: auto;
		}
		input.submit-button {
			clear: left;
			width: auto;
		}
	</style>
	
	<xsl:apply-templates select="section-schema[@handle='articles']" mode="form"/>
</xsl:template>

<xsl:template match="section-schema" mode="form">

	<form action="" method="post">
		
		<xsl:call-template name="form:validation-summary">
			<xsl:with-param name="event" select="$event"/>
		</xsl:call-template>
		
		<xsl:if test="*[@location='main']">
			<div id="main">			
				<xsl:apply-templates select="*[@location='main']" mode="control">
					<xsl:sort select="@sortorder" data-type="number" order="ascending"/>
				</xsl:apply-templates>
			</div>
		</xsl:if>
		
		<xsl:if test="*[@location='sidebar']">
			<div id="sidebar">			
				<xsl:apply-templates select="*[@location='sidebar']" mode="control">
					<xsl:sort select="@sortorder" data-type="number" order="ascending"/>
				</xsl:apply-templates>
			</div>
		</xsl:if>

		<input type="submit" name="action[publish-article]" value="Submit" class="submit-button" />

	</form>
	
</xsl:template>

<xsl:template match="*" mode="control">
	
	<xsl:choose>
		
		<xsl:when test="@type='input' or @type='order_entries' or @type='number'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:input">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>	
		</xsl:when>
		
		<xsl:when test="@type='upload' or @type='hashupload'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:input">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="type" select="'file'"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>	
		</xsl:when>
		
		<xsl:when test="@type='textarea'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:textarea">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="rows" select="size"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:when>
		
		<xsl:when test="@type='select' or @type='selectbox_link' or @type='pages' or @type='author'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:select">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="multiple" select="allow_multiple_selection"/>
						<xsl:with-param name="options" select="options/*"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:when>
		
		<xsl:when test="@type='taglist'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="text" select="@label"/>
				<xsl:with-param name="child">
					<xsl:call-template name="form:input">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
					</xsl:call-template>					
					<xsl:for-each select="options/option">
						<span><xsl:value-of select="."/></span>
						<xsl:text> </xsl:text>
					</xsl:for-each>					
				</xsl:with-param>
			</xsl:call-template>	
		</xsl:when>
		
		<xsl:when test="@type='checkbox'">
			<xsl:call-template name="form:label">
				<xsl:with-param name="event" select="$event"/>
				<xsl:with-param name="for" select="name()"/>
				<xsl:with-param name="class" select="'checkbox'"/>
				<xsl:with-param name="text">
					<xsl:choose>
						<xsl:when test="description">
							<xsl:value-of select="description"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@label"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:with-param>
				<xsl:with-param name="child">
					<xsl:call-template name="form:checkbox">
						<xsl:with-param name="event" select="$event"/>
						<xsl:with-param name="handle" select="name()"/>
						<xsl:with-param name="checked-by-default">
							<xsl:if test="default_state='on'">
								<xsl:text>yes</xsl:text>
							</xsl:if>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:with-param>
				<xsl:with-param name="child-position" select="'before'"/>
			</xsl:call-template>
		</xsl:when>

	</xsl:choose>
	
</xsl:template>
	
</xsl:stylesheet>