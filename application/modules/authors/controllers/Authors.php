<?php
class Authors extends MX_Controller {
	function __construct() {
		parent::__construct();
	}

		$this -> load -> model('mdl_authors');
		$query = $this -> mdl_authors -> _insert($data);
	}