<?php

class Header
{
	static public function display($page)
	{
		echo <<<END
		<!DOCTYPE html>
		<html lang="hu">
		<head>
			<meta charset="utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1" />

			<title>$page</title>
			<link href='//fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
			<link href="assets/css/bootstrap.min.css" rel="stylesheet">
			<link href="assets/css/main.css" rel="stylesheet">
		</head>
		<body>
END;

		include '_navbar.php';

	}
}
