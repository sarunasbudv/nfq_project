<?php
class Book extends MX_Controller {
	function __construct() {
		parent::__construct();
	}	function view() {		$book_id = $this -> uri -> segment(3);		$mysql_query = "						SELECT 							books.id, books.title, books.year, books.description,							GROUP_CONCAT(DISTINCT genres.genre_title SEPARATOR ', ') AS genre_title, 							GROUP_CONCAT(DISTINCT authors.name SEPARATOR ', ') AS name					  	FROM books					   		INNER JOIN genres_books					   			ON books.id = genres_books.book_id							INNER JOIN authors_books					   			ON books.id = authors_books.book_id					   		INNER JOIN genres 					   			ON genres_books.genre_id = genres.id					   		INNER JOIN authors					   			ON authors_books.author_id = authors.id					   	WHERE books.id = $book_id GROUP BY books.id						";		$data['query'] = $this -> _custom_query($mysql_query);		$data['headline'] = "Knygos Aprašymas";		$data['view_module'] = "book";		$data['view_file'] = "view";		$this -> load -> module('templates');		$this -> templates -> public_bootstrap($data);	}	function _custom_query($mysql_query) {
		$this -> load -> model('mdl_book');
		$query = $this -> mdl_book -> _custom_query($mysql_query);
		return $query;
	}}