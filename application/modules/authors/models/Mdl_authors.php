<?php
class Mdl_authors extends CI_model {
	function __construct() {
		parent::__construct();
	}
		$table = "authors";
		return $table;
	}
		$table = $this -> get_table();
		$this -> db -> insert($table, $data);
	}