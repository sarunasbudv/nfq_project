<?php
class Books extends MX_Controller {
	function __construct() {
		parent::__construct();
	}

		$this -> load -> model('mdl_books');
		$query = $this -> mdl_books -> _insert($data);
	}
		$this -> load -> model('mdl_books');
		$query = $this -> mdl_books -> get_max();
		return $query;
	}
		$this -> load -> model('mdl_books');
		$query = $this -> mdl_books -> _custom_query($mysql_query);
		return $query;
	}