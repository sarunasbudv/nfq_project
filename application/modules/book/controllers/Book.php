<?php
class Book extends MX_Controller {
	function __construct() {
		parent::__construct();
	}
		$this -> load -> model('mdl_book');
		$query = $this -> mdl_book -> _custom_query($mysql_query);
		return $query;
	}