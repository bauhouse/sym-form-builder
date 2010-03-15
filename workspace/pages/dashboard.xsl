<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h2><xsl:value-of select="$page-title"/></h2>
	<fieldset class="primary">
		<xsl:call-template name="dashboard-content"/>
		<xsl:call-template name="form-controls"/>
	</fieldset>
	<fieldset class="secondary">
		<div class="panel">
			<h2>Login Status</h2>
			<p>You have successfully logged in as <xsl:value-of select="$name"/>, <xsl:value-of select="$user-type"/>.</p>
			<p>You can log out by clicking on the <a href="{$root}/symphony/logout/">Logout</a> link here or at the bottom of the page.</p>
		</div>
	</fieldset>
	<div class="actions">
	</div>
</xsl:template>

<xsl:template name="dashboard-content">
	<h3>Welcome to Your Dashboard</h3>
	<p>I'll be adding content here to describe how to build your own forms with Form Controls, Section Schemas, and EventEx.</p>
</xsl:template>

<xsl:template name="form-controls">
<p>An XSLT utility to create powerful HTML forms with <a href="http://symphony-cms.com">Symphony</a></p>

<h2>What is it?</h2>

<p>Form Controls is a suite of XSL templates for rapidly building forms that are tightly coupled with Symphony Events. The core aim is to make forms easier to build so that the developer can spend less time on validation and checking posted data, and more time on adding the extra layer of polish that make forms more usable.</p>

<p>Form Controls provides the following functionality:</p>

<ul>
<li>templates to render all common HTML form control elements</li>
<li>pre-populate controls with static or dynamic data</li>
<li>persist posted values from Events</li>
<li>associate and optionally wrap with labels</li>
<li>provides HTML hooks when field is invalid (class attribute)</li>
<li>provides powerful validation messages and error response</li>
</ul>


<h2>Download</h2>

<p>Form Controls (form-controls.xsl) is a single XSLT file and can be downloaded from Github:
<a href="http://github.com/nickdunn/form-controls/tree/master">http://github.com/nickdunn/form-controls/tree/master</a></p>

<h2>Installing the utility</h2>

<p>Add the <code>form-controls.xsl</code> file to your <code>/workspace/utilities</code> folder alongside the <a href="http://symphony21.com/downloads/xslt/">other cool XSLT utilities</a> you know and love.</p>

<p>On the page in which you are building the form, import the XSL file:</p>

<pre><code>&lt;xsl:import href="../utilities/form-controls.xsl"/&gt;
</code></pre>

<p>Form Controls uses some functions not available to XSLT 1.0, therefore you will need to have the <a href="http://exslt.org/">EXSLT library</a> installed (you should do already) and you will need to add the EXSLT namespace to your page. Additionally Form Controls adds all templates and variables to <code>form</code> namespace so as not to clash with other templates in your site. After including these two namespaces, your page <code>stylesheet</code> element should look something like this:</p>

<pre><code>&lt;xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
    extension-element-prefixes="exsl form"&gt;
</code></pre>

<p>The <code>extension-element-prefixes</code> attribute prevents these namespaces being added to your HTML elements when the page is rendered.</p>

<h2>Supported form controls</h2>

<p>Form Controls supports all field types native to Symphony (input, textarea, select) and adds a few of its own too. It can generate the following:</p>

<ul>
<li>Label</li>
<li>Input (text, password, file)</li>
<li>Textarea</li>
<li>Checkbox</li>
<li>Radio</li>
<li>Select (including multi-select)</li>
<li>Radiobutton List</li>
<li>Checkbox List</li>
<li>Validation Summary (list of error messages)</li>
</ul>


<p>Form Controls assumes you are submitting to a front-end event in Symphony.</p>

<h2>Most basic example</h2>

<p>Submits to an event (<code>save-post</code>) derived from a Posts section. Create a new page and attach the <code>Save Post</code> event to it. Paste the following XSLT into your page replacing the default contents:</p>

<pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
    extension-element-prefixes="exsl form"&gt;

&lt;!-- Import form-controls.xsl --&gt;
&lt;xsl:import href="../utilities/form-controls.xsl"/&gt;

&lt;!-- Define a global variable pointing to your Event --&gt;
&lt;xsl:variable name="form:event" select="/data/events/save-blog-post"/&gt;

&lt;xsl:template match="data"&gt;

    &lt;form action="" method="post"&gt;

        &lt;fieldset&gt;
            &lt;legend&gt;Create new post&lt;/legend&gt;

            &lt;xsl:call-template name="form:validation-summary"/&gt;

            &lt;label&gt;
                Post title&lt;br/&gt;
                &lt;xsl:call-template name="form:input"&gt;
                    &lt;xsl:with-param name="handle" select="'title'"/&gt;
                &lt;/xsl:call-template&gt;
            &lt;/label&gt;

            &lt;label&gt;
                Post contents&lt;br/&gt;
                &lt;xsl:call-template name="form:textarea"&gt;
                    &lt;xsl:with-param name="handle" select="'content'"/&gt;
                &lt;/xsl:call-template&gt;
            &lt;/label&gt;

        &lt;/fieldset&gt;

    &lt;/form&gt;

&lt;/xsl:template&gt;

&lt;/xsl:stylesheet&gt;
</code></pre>

<p>This will generate HTML akin to the following (just the <code>fieldset</code> included, my indenting):</p>

<pre><code>&lt;fieldset&gt;
    &lt;legend&gt;Create new post&lt;/legend&gt;
    &lt;label&gt;
        Post title&lt;br /&gt;
        &lt;input name="fields[title]" id="fields-title" title="" class="" type="text" value="" /&gt;
    &lt;/label&gt;
    &lt;label&gt;
        Post contents&lt;br /&gt;
        &lt;textarea name="fields[content]" id="fields-content" title="" class=""&gt;&lt;/textarea&gt;
    &lt;/label&gt;
&lt;/fieldset&gt;
</code></pre>

<p>On form submit you will also see a validation summary — either a success message, or a list of missing or invalid fields.</p>

<h2>Template examples</h2>

<p>Here are examples outlining the full range of control templates.</p>

<h3>form:event</h3>

<p>This variable should be created globally, outside of the page templates. It should select the event node created by the event you are posting to.</p>

<pre><code>&lt;xsl:variable name="form:event" select="/data/events/save-blog-post"/&gt;
</code></pre>

<h3>form:label</h3>

<p>Renders an HTML <code>label</code> element that can be explicitly assigned to another form element. Can be wrapped around other controls.</p>

<h4>Parameters</h4>

<ul>
<li><code>for</code> (optional, string): Handle of a Symphony field name that this label is associated with</li>
<li><code>text</code> (optional, string): Text value of the label. Defaults to field name ($for value)</li>
<li><code>child</code> (optional, XML): Places this XML inside the label, for wrapping elements with the label</li>
<li><code>child-position</code> (optional, string): Place the child before or after the label text. Defaults to "after"</li>
<li><code>class</code> (optional, string): Value of the HTML @class attribute</li>
<li><code>template</code> (optional, XML): HTML template for label contents. Use <code>$</code> as placeholder for label text</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;xsl:call-template name="form:label"&gt;
    &lt;xsl:with-param name="for" select="'title'"/&gt;
&lt;/xsl:call-template&gt;

&lt;xsl:call-template name="form:label"&gt;
    &lt;xsl:with-param name="for" select="'title'"/&gt;
    &lt;xsl:with-param name="text" select="'Post Title'"/&gt;
    &lt;xsl:with-param name="template"&gt;
        &lt;span&gt;$ &lt;span class="required"&gt;*&lt;/span&gt;&lt;/span&gt;
    &lt;/xsl:with-param&gt;
&lt;/xsl:call-template&gt;

&lt;xsl:call-template name="form:label"&gt;
    &lt;xsl:with-param name="for" select="'title'"/&gt;
    &lt;xsl:with-param name="text" select="'Post Title'"/&gt;
    &lt;xsl:with-param name="child"&gt;
        &lt;xsl:call-template name="form:input"&gt;
            &lt;xsl:with-param name="handle" select="'title'"/&gt;
        &lt;/xsl:call-template&gt;
    &lt;/xsl:with-param&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h3>form:input</h3>

<p>Renders an HTML text <code>input</code> element with support for <code>password</code> and <code>file</code> types.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>value</code> (optional, string): Initial value of form control. Will not work for <code>file</code> inputs.</li>
<li><code>type</code> (optional, string): Type attribute value ("text", "password" "file"). Defaults to "text"</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>title</code> (optional, string): Title attribute value</li>
<li><code>size</code> (optional, string): Size attribute value</li>
<li><code>maxlength</code> (optional, string): Maxlength attribute value</li>
<li><code>autocomplete</code> (optional, string): Autocomplete attribute value ("off"). Not set by default</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;xsl:call-template name="form:input"&gt;
    &lt;xsl:with-param name="handle" select="'title'"/&gt;
    &lt;xsl:with-param name="value" select="'My first blog post'"/&gt;
&lt;/xsl:call-template&gt;

&lt;xsl:call-template name="form:input"&gt;
    &lt;xsl:with-param name="handle" select="'image'"/&gt;
    &lt;xsl:with-param name="type" select="'file'"/&gt;
    &lt;xsl:with-param name="title" select="'Please upload an image'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h3>form:textarea</h3>

<p>Renders an HTML <code>textarea</code> element.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>value</code> (optional, string): Contents of the textarea</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>rows</code> (optional, string): Rows attribute value</li>
<li><code>cols</code> (optional, string): cols attribute value</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;xsl:call-template name="form:textarea"&gt;
    &lt;xsl:with-param name="handle" select="'content'"/&gt;
    &lt;xsl:with-param name="rows" select="'5'"/&gt;
    &lt;xsl:with-param name="cols" select="'40'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h3>form:checkbox</h3>

<p>Renders an HTML checkbox <code>input</code> element. If a checkbox is not checked, its value is never sent in the POST array to the event. For this reason a hidden field with the same name, and a value of "no" will be rendered just before the checkbox. Ticking the checkbox will override this "no" value.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>checked</code> (optional, string): Initial checked state ("yes", "no"). Defaults to "no"</li>
<li><code>checked-by-default</code> (optional, string): When there is no initial $checked value (a fresh form), check by default ("yes", "no"). Defaults to "no"</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>title</code> (optional, string): Title attribute value</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
<li><code>allow-multiple</code> (optional, string): Internal use only ("yes", "no"). Whether checkbox is part of a checkbox list. Defaults to "no"</li>
<li><code>allow-multiple-value</code> (optional, string): Internal use only. Overrides default "yes" value when part of a checkbox list</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;!-- renders a checkbox (ticked), inside a label with the label text following the checkbox --&gt;
&lt;xsl:call-template name="form:label"&gt;
    &lt;xsl:with-param name="for" select="'published'"/&gt;
    &lt;xsl:with-param name="text" select="'Publish this post'"/&gt;
    &lt;xsl:with-param name="child"&gt;
        &lt;xsl:call-template name="form:checkbox"&gt;
            &lt;xsl:with-param name="handle" select="'published'"/&gt;
            &lt;xsl:with-param name="checked-by-default" select="'yes'"/&gt;
        &lt;/xsl:call-template&gt;
    &lt;/xsl:with-param&gt;
    &lt;xsl:with-param name="child-position" select="'before'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h3>form:radio</h3>

<p>Renders an HTML radio <code>input</code> element. Could be used to save values to an Input or Select Box field.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>value</code> (optional, string): The selected value for this radio sent when the form is submitted</li>
<li><code>existing-value</code> (optional, string): An initial value. Selects radio if it matches $value</li>
<li><code>checked-by-default</code> (optional, string): When there is no initial $existing-value (a fresh form), select by default ("yes", "no"). Defaults to "no"</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>title</code> (optional, string): Title attribute value</li>
<li><code>type</code> (optional, string): Internal use only ("radio", "checkbox"). Defaults to "radio"</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
<li><code>allow-multiple</code> (optional, string): Internal use only ("yes", "no"). Whether control is part of a radio/checkbox list. Defaults to "no"</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;!-- allow selection from two options --&gt;
&lt;xsl:call-template name="form:label"&gt;
    &lt;xsl:with-param name="text" select="'Choose Option 1?'"/&gt;
    &lt;xsl:with-param name="child"&gt;
        &lt;xsl:call-template name="form:radio"&gt;
            &lt;xsl:with-param name="handle" select="'option'"/&gt;
            &lt;xsl:with-param name="value" select="'Option 1'"/&gt;
            &lt;xsl:with-param name="checked-by-default" select="'yes'"/&gt;
        &lt;/xsl:call-template&gt;
    &lt;/xsl:with-param&gt;
    &lt;xsl:with-param name="child-position" select="'before'"/&gt;
&lt;/xsl:call-template&gt;

&lt;xsl:call-template name="form:label"&gt;
    &lt;xsl:with-param name="text" select="'Choose Option 2?'"/&gt;
    &lt;xsl:with-param name="child"&gt;
        &lt;xsl:call-template name="form:radio"&gt;
            &lt;xsl:with-param name="handle" select="'option'"/&gt;
            &lt;xsl:with-param name="value" select="'Option 2'"/&gt;
        &lt;/xsl:call-template&gt;
    &lt;/xsl:with-param&gt;
    &lt;xsl:with-param name="child-position" select="'before'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h3>form:select</h3>

<p>Renders an HTML <code>select</code> element. Has several presets to build commonly-used sets of options, and supports many formats to create additional options.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>options</code> (mandatory, XPath/XML): Options to build a list of  elements. Has presets! See examples.</li>
<li><code>value</code> (optional, string/XML): Initial selected value</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>title</code> (optional, string): Title attribute value</li>
<li><code>allow-multiple</code> (optional, string): Allow selection of multiple options ("yes", "no"). Defaults to "no"</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
</ul>


<h4>Examples</h4>

<pre><code>&lt;xsl:call-template name="form:select"&gt;
    &lt;xsl:with-param name="handle" select="'categories'"/&gt;
    &lt;xsl:with-param name="options" select="/data/countries/country"/&gt;
    &lt;xsl:with-param name="value" select="'United Kingdom'"/&gt;
&lt;/xsl:call-template&gt;

&lt;xsl:call-template name="form:select"&gt;
    &lt;xsl:with-param name="handle" select="'categories'"/&gt;
    &lt;xsl:with-param name="options" select="/data/countries/country"/&gt;
    &lt;xsl:with-param name="allow-multiple" select="'yes'"/&gt;
    &lt;xsl:with-param name="value"&gt;
        &lt;value&gt;United Kingdom&lt;/value&gt;
        &lt;country&gt;Australia&lt;/country&gt;
    &lt;/xsl:with-param&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<p>In the above example, multiple selected options can be achieved by passing XML to the <code>value</code> parameter. Only the node text value is used (no attributes).</p>

<p>The <code>options</code> parameter accepts only XML: an XPath expression as the <code>select</code> attribute, a child <code>xsl:copy-of</code>, hard-coded, or a combination of the latter:</p>

<pre><code>&lt;xsl:with-param name="options"&gt;
    &lt;option value=""&gt;Select a country:&lt;/option&gt;
    &lt;country&gt;Australia&lt;/country&gt;
    &lt;xsl:copy-of select="/data/countries/country"/&gt;
    &lt;country&gt;Zimbabwe&lt;/country&gt;
&lt;/xsl:with-param&gt;
</code></pre>

<p>Each node passed to this parameter will be converted to an HTML <code>option</code> element. If the node has an attribute of the following names: <code>handle</code>, <code>id</code>, <code>link-id</code>, <code>link-handle</code> or <code>value</code>; these will be used as the <code>value</code> attribute of the <code>option</code> element. If none of these attributes is found, no value attribute will be appended. As in the above example, to achieve an empty value for the field (for validation, for example) add an empty value attribute to an option.</p>

<p>The <code>options</code> parameter also accepts pre-defined string values as aliases for commonly-used sets of options.</p>

<h5>Days</h5>

<pre><code>&lt;xsl:with-param name="options" select="'days'"/&gt;
&lt;option&gt;1&lt;/option&gt;...&lt;option&gt;31&lt;/option&gt;
</code></pre>

<h5>Months</h5>

<pre><code>&lt;xsl:with-param name="options" select="'months'"/&gt;
&lt;option value="01"&gt;January&lt;/option&gt;...&lt;option value="12"&gt;December&lt;/option&gt;
</code></pre>

<h5>Years (+/-)</h5>

<pre><code>&lt;xsl:with-param name="options" select="'years+20'"/&gt;
&lt;option&gt;2009&lt;/option&gt;...&lt;option&gt;2029&lt;/option&gt;

&lt;xsl:with-param name="options" select="'years-5'"/&gt;
&lt;option&gt;2009&lt;/option&gt;...&lt;option&gt;2004&lt;/option&gt;
</code></pre>

<h3>form:radiobutton-list</h3>

<p>Renders a collection of HTML radio <code>input</code> elements wrapped with <code>label</code> elements. Used as a replacement for single-selection <code>select</code> elements.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>options</code> (mandatory, XPath/XML): Options to build a list of  elements. Has presets! See examples.</li>
<li><code>value</code> (optional, string): Initial selected value</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>title</code> (optional, string): Title attribute value</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;xsl:call-template name="form:radiobutton-list"&gt;
    &lt;xsl:with-param name="handle" select="'country'"/&gt;
    &lt;xsl:with-param name="options" select="/data/countries/country"/&gt;
    &lt;xsl:with-param name="value" select="'United Kingdom'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h3>form:checkbox-list</h3>

<p>Renders a collection of HTML checkbox <code>input</code> elements wrapped with <code>label</code> elements. Used as a replacement for allow-multiple <code>select</code> elements.</p>

<h4>Parameters</h4>

<ul>
<li><code>handle</code> (mandatory, string): Handle of the field name</li>
<li><code>options</code> (mandatory, XPath/XML): Options to build a list of  elements. Has presets! See examples.</li>
<li><code>value</code> (optional, string/XML): Initial selected value</li>
<li><code>class</code> (optional, string): Class attribute value</li>
<li><code>title</code> (optional, string): Title attribute value</li>
<li><code>section</code> (optional, string): Use with EventEx to change "fields[...]" to a section handle</li>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;xsl:call-template name="form:radiobutton-list"&gt;
    &lt;xsl:with-param name="handle" select="'country'"/&gt;
    &lt;xsl:with-param name="options" select="/data/countries/country"/&gt;
    &lt;xsl:with-param name="value" select="'United Kingdom'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<p>Multiple selected options can be achieved by passing XML to the <code>value</code> parameter (see <code>form:select</code> example).</p>

<h3>form:validation-summary</h3>

<p>Renders a success/error message and list of invalid fields.</p>

<h4>Parameters</h4>

<ul>
<li><code>event</code> (optional, XPath): XPath expression to the specific event within the page  node</li>
<li><code>error-message</code> (optional, string/XPath): Error notification message. Defaults to Symphony Event message</li>
<li><code>success-message</code> (optional, string/XPath): Success notification message. Defaults to Symphony Event message</li>
<li><code>errors</code> (optional, XML): Custom error messages for individual fields as  nodes. Defaults to Symphony field defaults</li>
<li><code>section</code> (optional, string): Use with EventEx to show errors for a specific section handle only</li>
</ul>


<h4>Example</h4>

<pre><code>&lt;xsl:call-template name="form:validation-summary"/&gt;

&lt;xsl:call-template name="form:validation-summary"&gt;
    &lt;xsl:with-param name="success-message" select="'The entry was saved.'"/&gt;
    &lt;xsl:with-param name="error-message" select="'The entry was not saved because of the following errors:'"/&gt;
    &lt;xsl:with-param name="errors"&gt;
        &lt;error handle="title"&gt;Post Title contained an unspecified error&lt;/error&gt;
        &lt;error handle="email" type="missing"&gt;E-mail is a required field!&lt;/error&gt;
        &lt;error handle="email" type="invalid"&gt;Please enter a valid e-mail address&lt;/error&gt;
        &lt;error handle="content" type="missing,invalid"&gt;Post Content is either missing or invalid&lt;/error&gt;
        &lt;error handle="email" message="Value must be unique."&gt;Someone is already using this e-mail address!&lt;/error&gt;
    &lt;/xsl:with-param&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<p>By default the validation summary will return an unordered list of errors from the event. Symphony fields provide relatively useful messages themselves and these will be used by default. Symphony 2.0.3 added support for the verbose error in the XML so this is used if found — otherwise a message concatenating the field name and "invalid" or "missing" is returned.</p>

<p>There are occassions where this is insufficient and more friendly messages are required. Individual fields can be targeted by their handle and a new message provided. Overrides for specific scenarios are supported by specifying the error type (<code>invalid</code> or <code>missing</code>).</p>

<p>Sometimes even this is not sufficient. In the case of a Unique Input field, an <code>invalid</code> response is given both when the field fails regular expression validation, or if the uniquity check finds that the value already exists. In this instance we need two separate messages. Since Symphony 2.0.3 provides the exact error message returned by the field this can be matched upon and an override provided. In the above example <code>email</code> is a Unique Input field and returns a different error for regular expression validation and uniquity validation.</p>

<p>When a string is used for <code>success-message</code> or <code>error-message</code> these are rendered in a <code>&lt;p&gt;</code> element in the HTML. However for greater flexibility you can pass HTML for these parameters and have it rendered without a <code>&lt;p&gt;</code> container:</p>

<pre><code>&lt;xsl:with-param name="success-message"&gt;
    &lt;em&gt;Congratulations!&lt;/em&gt; The form saved successfully.
&lt;/xsl:with-param&gt;
</code></pre>

<h2>Multiple forms per page</h2>

<p>In the "Most basic example" above a global <code>form:event</code> variable was created to refer to the Symphony event being used. While this is tidy for simple examples, if you need more than one form per page, then the <code>form:event</code> variable cannot be redefined for each form. For this reason, you should pass the optional <code>event</code> parameter to each control template:</p>

<pre><code>&lt;xsl:call-template name="form:input"&gt;
    &lt;xsl:with-param name="event" select="/data/events/save-blog-post"/&gt;
    &lt;xsl:with-param name="handle" select="'title'"/&gt;
    &lt;xsl:with-param name="value" select="'My first blog post'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h2>Submitting to multiple sections (EventEx)</h2>

<p><a href="http://github.com/yourheropaul/eventex/tree/master">EventEx</a> is a wrapper around Symphony's event model which allows you to submit entries to more than one section at a time. Form Controls has been developed in conjunction with EventEx, so they support and complement each other well.</p>

<h3>Using section handles <code>articles[...]</code> instead of <code>fields[...]</code></h3>

<p>The Symphony default is to pass field names in the form <code>fields[handle]</code>. EventEx changes this so that <code>fields</code> is repaced with the handle of the section into which you are posting. To account for this, each control template has an optional <code>section</code> parameter which defaults to <code>fields</code>:</p>

<pre><code>&lt;xsl:call-template name="form:input"&gt;
    &lt;xsl:with-param name="section" select="'articles'"/&gt;
    &lt;xsl:with-param name="handle" select="'title'"/&gt;
&lt;/xsl:call-template&gt;

&lt;input type="text" name="articles[title]" /&gt;
</code></pre>

<p>Posting multiple entries is also supported, using a numeric predicate that can be passed in the <code>section</code> parameter:</p>

<pre><code>&lt;xsl:call-template name="form:input"&gt;
    &lt;xsl:with-param name="section" select="'articles[0]'"/&gt;
    &lt;xsl:with-param name="handle" select="'title'"/&gt;
&lt;/xsl:call-template&gt;

&lt;input type="text" name="articles[0][title]" /&gt;
</code></pre>

<h3>Granular validation reporting</h3>

<p>EventEx will return an <code>entry</code> node in the <code>&lt;events&gt;</code> nodeset for each entry it tries to modify. If submitting to multiple sections then it is likely to want to validate fields by section. The <code>validation-summary</code> also accepts a <code>section</code> parameter so that it will show errors only for one section:</p>

<pre><code>&lt;xsl:call-template name="form:validation-summary"&gt;
    &lt;xsl:with-param name="section" select="'articles'"/&gt;
&lt;/xsl:call-template&gt;
</code></pre>

<h2>Building a form automatically (Section Schemas)</h2>

<p>Todo:</p>

<ul>
<li>Using Section Schemas</li>
<li>Forthcoming <code>form:build-control</code> template</li>
</ul>

</xsl:template>	

</xsl:stylesheet>