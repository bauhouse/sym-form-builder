<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="entries-list">
	<h2>
		<xsl:value-of select="$page-title"/>
		<a	href="{$root}/{$root-page}/{$current-page}/new/" 
			title="Create a new entry" 
			class="create button">Create New</a>
	</h2>
	<xsl:apply-templates select="section-schema" mode="table"/>
</xsl:template>

<xsl:template match="section-schema" mode="table">
	<table>
		<colgroup>
			<col class=""/>
		</colgroup>
		<thead>
			<tr>
				<xsl:apply-templates select="*[@show-column = 'yes']" mode="thead"/>
			</tr>
		</thead>
		<tbody>
			<xsl:choose>
				<xsl:when test="$section-data">
					<xsl:for-each select="$section-data">
						<xsl:call-template name="section-entries-rows"/>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<tr class="odd inactive">
						<td colspan="{count(*)}">No entries available.
							<a href="{$root}/{$root-page}/{$current-page}/new/">Create a new entry</a>
						</td>
					</tr>
				</xsl:otherwise>
			</xsl:choose>
		</tbody>
	</table>
</xsl:template>

<xsl:template match="*" mode="thead">
	<th><xsl:value-of select="@label"/></th>
</xsl:template>

<xsl:template name="section-entries-rows">
	<xsl:param name="entry-data" select="."/>
	<tr>
		<xsl:if test="position() mod 2 = '1'">
			<xsl:attribute name="class">odd</xsl:attribute>
		</xsl:if>
		<xsl:apply-templates select="/data/section-schema/*[@show-column = 'yes']" mode="row">
			<xsl:with-param name="entry-data" select="$entry-data"/>
		</xsl:apply-templates>
	</tr>
</xsl:template>

<xsl:template match="*" mode="row">
	<xsl:param name="entry-data"/>
	<xsl:param name="field-name" select="name(.)"/>
	<xsl:param name="field-value" select="$entry-data/*[name() = $field-name]"/>
	<td>
		<xsl:choose>
			<xsl:when test="position() = 1">
				<a href="{$root}/{$root-page}/{$current-page}/edit/{$entry-data/@id}/"><xsl:value-of select="$field-value"/></a>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="@type = 'textarea'">
						<xsl:value-of select="substring($field-value, 1, 75)"/>
						<xsl:if test="string-length($field-value) &gt; 75">
							<xsl:text>...</xsl:text>
						</xsl:if>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$field-value"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</td>
</xsl:template>

</xsl:stylesheet>