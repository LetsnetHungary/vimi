<?php
require_once "assets/_includes/_header.php";
Header::display("Elérhetőségeink");
?>
	<section id="content">
		<div class="container">
			<h2 class="text-center">Elérhetőségeink</h2>
			<table class="table table-responsive">
				<tr>
					<!--
					<td><span class="glyphicon glyphicon-map-marker hidden-xs">&nbsp;</span>Címünk</td>
					<td>Novimercurius Kft., 2317. Szigetcsép, Kossuth Lajos u. 23</td>
				-->
				</tr>
				<tr>
					<td><span class="glyphicon glyphicon-map-marker hidden-xs">&nbsp;</span>Telephelyünk</td>
					<td>1031. Budapest, Szentendrei út 107.</td>
				</tr>
				<tr>
					<td><span class="glyphicon glyphicon-phone-alt hidden-xs">&nbsp;</span>Telefonszámaink</td>
					<td><a href="telto:06-309-597-598">06-309-597-598</a>, <a href="telto:06-20-44-77-282">06-20-44-77-282</a></td>

				</tr>
				<tr>
					<td><span class="glyphicon glyphicon-envelope hidden-xs">&nbsp;</span>E-mail</td>
					<td>
						<a href="mailto:info@vimi.hu">info@vimi.hu</a>
					</td>
				</tr>
				<tr>
					<td><span class="glyphicon glyphicon-globe hidden-xs">&nbsp;</span>Web</td>
					<td><a href="http://www.vi-mi.hu">www.vi-mi.hu</a></td>
				</tr>
				<tr>
					<td><span class="glyphicon glyphicon-globe hidden-xs">&nbsp;</span>Facebook</td>
					<td></td>
				</tr>

			</table>
		</div>
	</section>
<?php
require_once "assets/_includes/_footer.php";
(new Footer())->display();

?>
