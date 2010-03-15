<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:variable name="login-info" select="/data/events/login-info"/>
<xsl:variable name="is-logged-in" select="$login-info/@logged-in"/>
<xsl:variable name="name" select="$login-info/name"/>
<xsl:variable name="username" select="$login-info/username"/>
<xsl:variable name="user-type" select="$login-info/@user-type"/>
<xsl:variable name="user-id" select="$login-info/@id"/>
<xsl:variable name="primary-account" select="$login-info/@primary-account"/>
<xsl:param name="page-types" select="/data/navigation/page[@handle = $current-page]/types"/>
<xsl:param name="page-type">
	<xsl:choose>
		<xsl:when test="$is-logged-in and $page-types/type != 'login' and $page-types/type != 'index'">admin</xsl:when>
		<xsl:otherwise>public</xsl:otherwise>
	</xsl:choose>
</xsl:param>

<xsl:template match="navigation">
  <ul id="nav">
    <xsl:choose>
      <xsl:when test="$is-logged-in">
        <xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'login')]"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
      </xsl:otherwise>
    </xsl:choose>
  </ul>
</xsl:template>

<xsl:template match="page">
  <li>
    <a href="{$root}/{@handle}/">
      <xsl:if test="@handle = $current-page or 
        (@handle = $current-page and $page-type = $current-page) or 
        (@handle = $parent-path and $page-type = $parent-path)">
        <xsl:attribute name="class">active</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>

<xsl:template match="page" mode="front-end">
  <li class="front-end">
    <a href="{$root}/{@handle}/">
      <xsl:if test="@handle = $current-page">
        <xsl:attribute name="class">active</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>

</xsl:stylesheet>