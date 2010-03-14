<?php

	require_once(EXTENSIONS . '/eventex/lib/class.eventex.php');
	
	Class eventsave_project_user extends EventEx {
		
		public static function getSource(){
			return array("projects", "users");
		}

		public static function about(){
			return array(
					 'name' => 'Save Project User',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/form-builder',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-03-13T17:27:07+00:00',
					 'trigger-condition' => 'action[save-project-user]');	
		}

		// When the documentation method is not included, viewing the event results in a blank page, so...
		public static function documentation(){
			return '
        <h3>An EventEx Event</h3>
        <p>To demonstrate the ability to save entries to multiple sections (in this case, Projects and Users) using the EventEx extension.</p>';
		}
		
		protected function __trigger(){
			// this returns a Symphony XMlElement object
			$result = $this->updateNamedSections(self::getSource());
			
			return $result;
		}		

	}

