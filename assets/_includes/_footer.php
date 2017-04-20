<?php

class Footer
{
	private $scripts;

	public function __construct()
	{
		$this->scripts = array("//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js", "assets/js/bootstrap.min.js");
	}

	public function addScript($url)
	{
		array_push($this->scripts, $url);
		return $this;
	}

	public function display()
	{
		for ($i = 0; $i < count($this->scripts); $i++) {
			echo '<script src="' . $this->scripts[$i] . '"></script>';
		}
		echo "</body>";
		echo "</html>";
		return $this;
	}
}
