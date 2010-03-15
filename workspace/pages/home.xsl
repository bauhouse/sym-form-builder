<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h2><xsl:value-of select="heading"/></h2>
	<fieldset class="primary">
		<xsl:call-template name="about-symphony"/>
	</fieldset>
	<fieldset class="secondary">
		<div class="panel">
			<xsl:choose>
				<xsl:when test="$is-logged-in">
					<h2>Login Status</h2>
					<p>You have successfully logged in as <xsl:value-of select="$name"/>, <xsl:value-of select="$user-type"/>.</p>
					<p>You can log out by clicking on the <a href="{$root}/symphony/logout/">Logout</a> link here or at the bottom of the page.</p>
				</xsl:when>
				<xsl:otherwise>
					<h2>Login</h2>
					<label>Username
						<input name="username" type="text"/>
					</label>
					<label>Password
						<input name="password" type="password"/>
					</label>
					<input name="action[login]" type="submit" value="Login"/>
					<input name="redirect" type="hidden" value="{$root}/"/>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</fieldset>
	<div class="actions">
	</div>
</xsl:template>

<xsl:template name="about-symphony">
	<h3>About Symphony</h3>
	<p><a href="http://symphony-cms.com/">Symphony</a> is an Open Source content management system made for web developers. It gives you all the power and flexibility you’ll need, while keeping out of your way.</p>
	
	<h3>Designed to do things your way</h3>
	<p>Symphony lets you organise everything the way you like, from your publishing environment to your website’s URL structure. Built to be versatile and customisable, Symphony really is what you make of it.</p>
	
	<h3>Powered by XML and XSLT</h3>
	<p>Symphony’s templating engine is pure XSLT goodness. XSLT is a standard recommended by the W3C, so learning Symphony means that you’re learning skills that you can also use outside of the system. If you already know the XML and CSS standards, then chances are you should be able to quickly pick up XSLT.</p>
	<p>Symphony lets you to create small blocks of XSLT code called utilities, which you can use as building blocks to construct your site’s pages. Due to the nature of XSLT, these utilities are highly reusable, so the next time you’re developing a website you’ll probably find you’ve already done half the work.</p>
	
	<h3>Symphony Resources</h3>
	<p>The Symphony <a href="http://symphony-cms.com/discuss/">community forum</a> is full of friendly and knowledgeable Symphony users, and the Symphony team are always quick to respond, so it’s a great place to go if you have questions.</p>
</xsl:template>
	
</xsl:stylesheet>