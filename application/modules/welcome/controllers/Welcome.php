<?php
class Welcome extends MX_Controller {
	function __construct() {
		parent::__construct();
	}

	public function index() {
		$this -> load -> library('form_validation');
		$this -> load -> module('custom_pagination');

		$this -> form_validation -> set_rules('keyword', 'Paieška', 'required');

		if ($this -> form_validation -> run() == TRUE) {
			$keyword = $this -> input -> post('keyword', TRUE);
			$search = TRUE;
		} else {
			$keyword = "";
			$search = FALSE;
		}

		$use_limit = FALSE;
		$mysql_query = $this -> _generate_mysql_query($use_limit, $keyword, $search);
		$query = $this -> _custom_query($mysql_query);
		$total_items = $query -> num_rows();

		$use_limit = TRUE;
		$mysql_query = $this -> _generate_mysql_query($use_limit, $keyword, $search);

		$pagination_data['template'] = 'public_bootstrap';
		$pagination_data['target_base_url'] = base_url();
		$pagination_data['total_rows'] = $total_items;
		$pagination_data['offset_segment'] = 1;
		$pagination_data['limit'] = $this -> get_limit();

		$data['pagination'] = $this -> custom_pagination -> _generate_pagination($pagination_data);
		$pagination_data['offset'] = $this -> get_offset();
		$data['showing_statement'] = $this -> custom_pagination -> get_showing_statement($pagination_data);

		$data['query'] = $this -> _custom_query($mysql_query);
		$data['headline'] = "Knygų Sąrašas";
		$data['view_module'] = "welcome";
		$data['view_file'] = "view";
		$data['search'] = $search;

		$this -> load -> module('templates');
		$this -> templates -> public_bootstrap($data);
	}

	function _generate_mysql_query($use_limit, $keyword, $search) {
		$mysql_query = "
						SELECT 
							books.id, books.title, books.year, 
							GROUP_CONCAT(DISTINCT genres.genre_title SEPARATOR ', ') AS genre_title, 
							GROUP_CONCAT(DISTINCT authors.name SEPARATOR ', ') AS name
					  	FROM books
					   		INNER JOIN genres_books
					   			ON books.id = genres_books.book_id
							INNER JOIN authors_books
					   			ON books.id = authors_books.book_id
					   		INNER JOIN genres 
					   			ON genres_books.genre_id = genres.id
					   		INNER JOIN authors
					   			ON authors_books.author_id = authors.id
					   		 
						";
		if (($search == TRUE) and ($use_limit == TRUE)) {
			$limit = $this -> get_limit();
			$offset = $this -> get_offset();
			$mysql_query .= " 
			WHERE books.title LIKE '%$keyword%' 
			OR books.year LIKE '%$keyword%' 
			OR genre_title LIKE '%$keyword%'
			OR name LIKE '%$keyword%'
			GROUP BY books.id ";
		}
		if (($search == FALSE) and ($use_limit == FALSE)) {
			$mysql_query .= " GROUP BY books.id";
		}
		if (($search == TRUE) and ($use_limit == FALSE)) {
			$mysql_query .= " 
			WHERE books.title LIKE '%$keyword%' 
			OR books.year LIKE '%$keyword%' 
			OR genre_title LIKE '%$keyword%'
			OR name LIKE '%$keyword%'
			GROUP BY books.id";
		}
		if (($search == FALSE) and ($use_limit == TRUE)) {
			$limit = $this -> get_limit();
			$offset = $this -> get_offset();
			$mysql_query .= "GROUP BY books.id LIMIT " . $offset . ", " . $limit;
		}

		return $mysql_query;
	}

	function get_limit() {
		$limit = 15;
		return $limit;
	}

	function get_offset() {
		$offset = $this -> uri -> segment(1);
		if (!is_numeric($offset)) {
			$offset = 0;
		}
		return $offset;
	}

	function _custom_query($mysql_query) {
		$this -> load -> model('mdl_welcome');
		$query = $this -> mdl_welcome -> _custom_query($mysql_query);
		return $query;
	}

}
