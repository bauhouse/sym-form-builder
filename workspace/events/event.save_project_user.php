<?php

	require_once(EXTENSIONS . '/eventex/lib/class.eventex.php');
	
	Class eventsave_project_user extends Event{
		
		const ROOTELEMENT = 'save-project-user';
		
		public $eParamFILTERS = array(
			
		);
			
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

		public static function getSource(){
			return array("projects", "users");
		}

		// When the documentation method is not included, viewing the event results in a blank page
		public static function documentation(){
			return '
        <h3>An EventEx Event</h3>
        <p>The purpose of which is to demonstrate the ability to save to multiple entries using the EventEx extension.</p>';
		}
		
		public function load(){			
			if(isset($_POST['action']['save-project-user'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

