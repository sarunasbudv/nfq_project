<?php
class Mdl_books extends CI_model {
	function __construct() {
		parent::__construct();
	}
		$table = "books";
		return $table;
	}
		$table = $this -> get_table();
		$this -> db -> insert($table, $data);
	}
		$table = $this -> get_table();
		$this -> db -> select_max('id');
		$query = $this -> db -> get($table);
		$row = $query -> row();
		$id = $row -> id;
		return $id;
	}
		$query = $this -> db -> query($mysql_query);
		return $query;
	}