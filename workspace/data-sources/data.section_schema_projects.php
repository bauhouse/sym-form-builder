<?php

	require_once(TOOLKIT . '/class.datasource.php');
	require_once(TOOLKIT . '/class.sectionmanager.php');
	require_once(TOOLKIT . '/class.fieldmanager.php');
	require_once(TOOLKIT . '/class.entrymanager.php');
	
	Class datasourcesection_schema_projects extends Datasource{
		
		public $dsParamROOTELEMENT = 'section-schema';
		
		
		
		
		
		
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array("");
		}
		
		public function about(){
			return array(
					 'name' => 'Section Schema: Projects',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/eventex',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-03-10T18:43:54+00:00');	
		}
		
		public function getSource(){
			return '2';
		}
		
		public function allowEditorToParse(){
			return false;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				$extension = $this->_Parent->ExtensionManager->create('section_schemas');
				$extension->getSectionSchema($result, $this->getSource());
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			
			
			
			return $result;
		}
	}

