<?php
	class Templates extends MX_Controller 
	{
		function __construct()
		{
			parent::__construct();
		}
		function public_bootstrap($data) {
			if(!isset($data['view_module'])){
				$data['view_module']= $this->uri->segment(1);			
			}
			 $this->load->view('public_bootstrap', $data);
		}

	}