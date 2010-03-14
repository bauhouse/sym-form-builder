<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
	extension-element-prefixes="exsl form">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/form-controls.xsl"/>
<xsl:import href="../utilities/section-schemas.xsl"/>

<!-- Define a global variable pointing to your Event -->
<xsl:variable name="form:event" select="/data/events/save-project-user"/>
<xsl:variable name="event-action" select="'save-project-user'"/>

<xsl:template match="data">
	<form action="" method="post">
		<h1>
			<a href="http://home/sym/form-builder/">Symphony Form Builder</a>
		</h1>
		<ul id="nav">
			<li>Sections
				<ul>
					<li><a href="http://home/sym/form-builder/users/">Users</a></li>
					<li><a href="http://home/sym/form-builder/projects/">Projects</a></li>
					<li><a href="http://home/sym/form-builder/project-user/">Project User</a></li>
				</ul>
			</li>
		</ul>
		<h2>Project User</h2>
		<xsl:call-template name="form:validation-summary"/>
		
		<fieldset class="primary">
			<label class="" for="projects-title">Title <input name="projects[title]" id="projects-title" title="" class="" type="text" value="" /></label>
			<label class="" for="projects-description">Description <textarea name="projects[description]" id="projects-description" title="" class="" rows="15"></textarea></label>
			<label class="" for="projects-status">Status <select name="projects[status]" id="projects-status" title="" class=""><option value="Active">Active</option><option value="Inactive">Inactive</option><option value="Finished">Finished</option></select></label>
			<label class="" for="users-username">Username <input name="users[username]" id="users-username" title="" class="" type="text" value="" /></label>
			<label class="" for="users-name">Name <input name="users[name]" id="users-name" title="" class="" type="text" value="" /></label>
			<label class="" for="users-email">Email <input name="users[email]" id="users-email" title="" class="" type="text" value="" /></label>
		</fieldset>
		<fieldset class="secondary">
			<label class="" for="projects-contributors">Contributors <select name="projects[contributors][]" id="projects-contributors" title="" class="" multiple="multiple"><option>
				</option><option value="12">Tom</option><option value="6">Matthew</option><option value="5">Tracy</option><option value="4">Jane</option><option value="3">John</option><option value="2">Bob</option><option value="1">Stephen Bau</option></select></label>
			<label class="" for="users-role">Role <select name="users[role]" id="users-role" title="" class=""><option value="Inactive">Inactive</option><option value="Customer">Customer</option><option value="Developer">Developer</option></select></label>
			<label class="checkbox" for="users-anonymous"><input type="hidden" value="no" name="users[anonymous]" /><input name="users[anonymous]" id="users-anonymous" title="" class="" type="checkbox" value="yes" />Anonymous </label>
		</fieldset>
		<div class="actions">
			<input name="action[save-project-user]" accesskey="s" type="submit" value="Create Entry" />
		</div>
		<ul id="usr">
			<li>
				<a href="http://home/sym/form-builder/symphony/system/authors/edit/1/">Stephen Bau</a>
			</li>
			<li>
				<a href="http://home/sym/form-builder/symphony/logout/">Logout</a>
			</li>
		</ul>
	</form>
</xsl:template>

</xsl:stylesheet>