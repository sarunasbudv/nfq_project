<?php
class Genres extends MX_Controller {
	function __construct() {
		parent::__construct();
	}

		$this -> load -> model('mdl_genres');
		$query = $this -> mdl_genres -> _insert($data);
	}