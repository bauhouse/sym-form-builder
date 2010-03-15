<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcestatus extends Datasource{
		
		public $dsParamROOTELEMENT = 'status';
		public $dsParamORDER = 'asc';
		public $dsParamLIMIT = '20';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamSTARTPAGE = '1';
		
		public $dsParamFILTERS = array(
				'id' => '{$id}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'background-color',
				'text-color',
				'dashboard',
				'issues',
				'milestones',
				'finished',
				'order'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Status',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/form-builder',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-03-15T14:39:41+00:00');	
		}
		
		public function getSource(){
			return '6';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

