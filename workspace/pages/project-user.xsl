<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/form-controls.xsl"/>

<!-- Define a global variable based on the handle of your Event -->
<xsl:variable name="event-action" select="'save-project-user'"/>
<xsl:variable name="form:event" select="/data/events/*[name()=$event-action]"/>

<xsl:template match="data">
	<h2><xsl:value-of select="$page-title"/></h2>
	<xsl:call-template name="form:validation-summary"/>
	
	<fieldset class="primary">
		<label class="" for="projects-title">Project: Title <input name="projects[title]" id="projects-title" title="" class="" type="text" value="" /></label>
		<label class="" for="projects-description">Project: Description <textarea name="projects[description]" id="projects-description" title="" class="" rows="15"></textarea></label>
		<label class="" for="projects-status">Project: Status <select name="projects[status]" id="projects-status" title="" class=""><option value="Active">Active</option><option value="Inactive">Inactive</option><option value="Finished">Finished</option></select></label>
		<label class="" for="users-username">User: Username <input name="users[username]" id="users-username" title="" class="" type="text" value="" /></label>
		<label class="" for="users-name">User: Name <input name="users[name]" id="users-name" title="" class="" type="text" value="" /></label>
		<label class="" for="users-email">User: Email <input name="users[email]" id="users-email" title="" class="" type="text" value="" /></label>
	</fieldset>
	<fieldset class="secondary">
		<label class="" for="projects-contributors">Projects: Contributors <select name="projects[contributors][]" id="projects-contributors" title="" class="" multiple="multiple"><option>
			</option><option value="12">Tom</option><option value="6">Matthew</option><option value="5">Tracy</option><option value="4">Jane</option><option value="3">John</option><option value="2">Bob</option><option value="1">Stephen Bau</option></select></label>
		<label class="" for="users-role">User: Role <select name="users[role]" id="users-role" title="" class=""><option value="Inactive">Inactive</option><option value="Customer">Customer</option><option value="Developer">Developer</option></select></label>
		<label class="checkbox" for="users-anonymous"><input type="hidden" value="no" name="users[anonymous]" /><input name="users[anonymous]" id="users-anonymous" title="" class="" type="checkbox" value="yes" />User: Anonymous </label>
	</fieldset>
	<div class="actions">
		<input name="action[{$event-action}]" accesskey="s" type="submit" value="Create Entry" />
	</div>
</xsl:template>

</xsl:stylesheet>