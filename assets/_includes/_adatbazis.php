<?php

class Adatbazis
{
	protected $host = "localhost";
	protected $user = "root";
	protected $passwd = "mysql";
	protected $db = "vimi";

	protected $connection;

	public function __construct()
	{
		$this->connection = new mysqli($this->host, $this->user, $this->passwd, $this->db);

		if ($this->connection->connect_error) {
			echo "Error when connecting to mysql server";
		}

		$this->connection->set_charset("utf8");
	}

	public function __destruct()
	{
		$this->connection->close();

	}

	public function getAutok()
	{
		$query = "SELECT * FROM autok";
		$result = $this->connection->query($query);
		return $result;
	}

	public function getAutokWithPrices() {
		$query = "SELECT * FROM autok INNER JOIN arak ON (autok.nev = arak.COL) order by autok.id";
		$result = $this->connection->query($query);
		return $result;
	}


	public function uploadKolcsonzesek()
	{

		$auto = $_POST["auto"];
		$days = $_POST["days"];
		$startdate = $_POST["startdate"];
		$user = $_POST["user"];


			$query = "INSERT INTO kolcsonzesek (user, startdate, days, car) VALUES ('$user', '$startdate', '$days', '$auto')";
			$result = $this->connection->query($query);
	}
}
