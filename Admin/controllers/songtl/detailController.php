<?php

	class DetailBlog extends Controller{
		public function __construct(){
			parent::__construct();

			$id = isset($_GET["id"])?$_GET["id"]:"";
			$value = $this->Model->fetchOne("select * from songtl where maBH='$id'");

			include "views/songtl/detailView.php";
		}
	}
	new DetailBlog();

?>