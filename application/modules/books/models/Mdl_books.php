<?phpif (!defined('BASEPATH'))	exit('No direct script access allowed');
class Mdl_books extends CI_model {
	function __construct() {
		parent::__construct();
	}	function get_table() {
		$table = "books";
		return $table;
	}	function _insert($data) {
		$table = $this -> get_table();
		$this -> db -> insert($table, $data);
	}	function get_max() {
		$table = $this -> get_table();
		$this -> db -> select_max('id');
		$query = $this -> db -> get($table);
		$row = $query -> row();
		$id = $row -> id;
		return $id;
	}	function _custom_query($mysql_query) {		
		$query = $this -> db -> query($mysql_query);
		return $query;
	}}