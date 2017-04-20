<?php
require_once "assets/_includes/_header.php";
Header::display("Biztosítás");
?>
	<section id="content">
		<div class="container">
<?php
			require_once "assets/_includes/_auto.php";
			require_once "assets/_includes/_adatbazis.php";

			$db = new Adatbazis();
			$autok = $db->getAutok();
			while ($auto = $autok->fetch_assoc()) {
				Auto::display($auto);
			}
?>
		</div>
	</section>
<?php
include "assets/_includes/_footer.php";
(new Footer())->display();

?>