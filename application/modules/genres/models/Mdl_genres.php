<?php
class Mdl_genres extends CI_model {
	function __construct() {
		parent::__construct();
	}
		$table = "genres";
		return $table;
	}
		$table = $this -> get_table();
		$this -> db -> insert($table, $data);
	}