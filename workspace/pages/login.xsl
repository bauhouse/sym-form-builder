<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h2>Login</h2>
	<xsl:choose>
		<xsl:when test="$is-logged-in">
			<fieldset class="settings">
				<legend>Login Status</legend>
				<p>You have successfully logged in as <xsl:value-of select="$name"/>, <xsl:value-of select="$user-type"/>.</p>
			</fieldset>
			<fieldset class="settings">
				<legend>Body</legend>
				<p>To find out more about this Symphony Ensemble, read more about the features in this version on the home page. An extended entry is shown on the <a href="{$root}/">home page</a> when you log in.</p>
			</fieldset>
			<div class="actions">
			</div>
		</xsl:when>
		<xsl:otherwise>
			<fieldset class="settings">
				<legend>Login Status</legend>
				<label>Username
					<input name="username" type="text"/>
				</label>
				<label>Password
					<input name="password" type="password"/>
				</label>
			</fieldset>
			<div class="actions">
				<input name="action[login]" type="submit" value="Login"/>
				<input name="redirect" type="hidden" value="{$root}/symphony/"/>
			</div>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>
	
</xsl:stylesheet>
