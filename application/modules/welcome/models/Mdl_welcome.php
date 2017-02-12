<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Mdl_welcome extends CI_model {

	function __construct() {
		parent::__construct();
	}

	function get_table() {
		$table = "books";
		return $table;
	}

	function _custom_query($mysql_query) {
		$query = $this -> db -> query($mysql_query);
		return $query;
	}

}
