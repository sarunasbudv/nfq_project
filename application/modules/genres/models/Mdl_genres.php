<?phpif (!defined('BASEPATH'))	exit('No direct script access allowed');
class Mdl_genres extends CI_model {
	function __construct() {
		parent::__construct();
	}	function get_table() {
		$table = "genres";
		return $table;
	}	function _insert($data) {
		$table = $this -> get_table();
		$this -> db -> insert($table, $data);
	}}