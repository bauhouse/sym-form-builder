<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventsave_status extends Event{
		
		const ROOTELEMENT = 'save-status';
		
		public $eParamFILTERS = array(
			
		);
			
		public static function about(){
			return array(
					 'name' => 'Save Status',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/form-builder',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-03-15T06:58:35+00:00',
					 'trigger-condition' => 'action[save-status]');	
		}

		public static function getSource(){
			return '6';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-status result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/save-status></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-status result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/save-status></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>Background Color
    &lt;input name="fields[background-color]" type="text" />
  &lt;/label>
  &lt;label>Text Color
    &lt;input name="fields[text-color]" type="text" />
  &lt;/label>
  &lt;label>Dashboard
    &lt;input name="fields[dashboard]" checked="checked" type="checkbox" />
  &lt;/label>
  &lt;label>Issues
    &lt;input name="fields[issues]" checked="checked" type="checkbox" />
  &lt;/label>
  &lt;label>Milestones
    &lt;input name="fields[milestones]" checked="checked" type="checkbox" />
  &lt;/label>
  &lt;label>Finished
    &lt;input name="fields[finished]" type="checkbox" />
  &lt;/label>
  &lt;label>Order
    &lt;input name="fields[order]" type="text" />
  &lt;/label>
  &lt;input name="action[save-status]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://home/sym/form-builder/success/" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['save-status'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

