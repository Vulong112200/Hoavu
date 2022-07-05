<?php
	session_start();
	include "config/Config.php";
	include "config/Model.php";
	include "config/Controller.php";

	if(isset($_GET["act"]) && $_GET["act"]=="logout")
		unset($_SESSION["account"]);

	if(isset($_SESSION['account'])) {
		$controller = isset($_GET["controller"])?"app/controllers/".$_GET["controller"].".php":"app/controllers/Trangchu.php";
		include "layout/Trang.php";
	}
	else {
		$controller = isset($_GET["controller"])?"app/controllers/".$_GET["controller"].".php":"app/controllers/Trangchu.php";
		include "layout/Trang.php";
	}
?>