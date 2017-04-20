<?php
require_once "assets/_includes/_header.php";
Header::display("VIMI");
?>
	<!-- Modal -->
	<div class="modal fade" id="miert-modal" tabindex="-1" role="dialog" aria-labelledby="miert-modal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
							aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Miért mi vagyunk a megfelelő választás?</h4>
				</div>
				<div class="modal-body">
					<ul>
						<li>mert már a második bérelt naptól árkedvezményt biztosítunk Önnek</li>
						<li>mert saját műhelyünkben ellenőrizzük a bérautóink műszaki állapotát</li>
						<li>mert az évszaknak megfelelő gumiabroncsokkal adjuk át autóinkat</li>
						<li>mert könnyen tudunk alkalmazkodni ügyfeleink igényeihez</li>
						<li>mert Óbudán ingyenesen házhoz visszük az Ön által kiválasztott bérautónkat</li>
						<li>mert bérautóink rendelkeznek Pest megyei autópálya matricával</li>
						<li>mert Óbudán ingyenesen házhoz visszük az Ön által kiválasztott bérautónkat</li>
						<li>mert ha velünk javíttatja autóját, csereautót tudunk biztosítani Önnek</li>
						<li>mert korrekt és gyors ügyintézést vállalunk</li>
						<li>mert mi vagyunk a megfelelő választás</li>
					</ul>
				</div>
				<div class="modal-footer">
					<div class="text-center">
						<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section id="content">
		<div class="container text-center">
			<h2>
				Köszöntjük a VIMI „Low budget” bérautók honlapján!
			</h2>
			<p class="lead">
				Engedje meg, hogy néhány szóban bemutatkozzunk.
			</p>
			<p>
				Társaságunkat azért hoztuk létre, hogy azoknak a kedves ügyfeleinknek az igényeit tudjuk kielégíteni,
				akiknek bérautóra van szükségük, mérsékelt áron. Telephelyünkön található saját, jól felszerelt
				műhelyünkben, előre meghatározott terv szerint folyamatosan karbantartjuk a bérbe adni kívánt
				gépjárműveinket. Ezzel az előre ütemezett szervízeléssel tudjuk szavatolni a gépkocsik megfelelő
				műszaki állapotát, hogy Ön a kiválasztott járművel a bérlet tartama alatt biztonsággal és gond nélkül
				tudjon közlekedni. Természetesen, műhelyünkben vállaljuk az Ön gépkocsijának kisebb, vagy
				nagyobb javítását, műszaki vizsgáztatását vagy csak alkatrészek beszerzését is, szabad kapacitásunk
				függvényében. Az általunk végzett javítás idejére kedvezményesen, vagy akár térítésmentesen csere
				autót tudunk biztosítani Önnek.
			<p>
				A közúti forgalomban való részvétel egyik alapfeltétele, hogy a gépjármű rendelkezzen Kötelező
				Gépjármű Felelősség Biztosítással. A járműparkunk nagysága determinálta azt, hogy a biztosítási
				szférában is gyökeret verjünk. Tehát amennyiben Önnek biztosításra van szüksége, úgy szintén
				bizalommal fordulhat hozzánk. És nem csak gépjármű biztosítással, hanem – a teljesség igénye nélkül
				– élet-, baleset-, nyugdíj-, vagy lakásbiztosítással kapcsolatban is kérheti tanácsunkat.
			</p>
			<p>
				Hogy a gépjárművekkel összefüggő szolgáltatásaink teljes körűek legyenek, vállaljuk továbbá
				gépkocsikkal kapcsolatos okmányirodai ügyintézéseket, valamint külföldi autóvásárlásában is tudunk
				segítő kezet nyújtani Önnek.
			</p>

			<p>
				<strong>Új szolgáltatásaink:</strong> munkagép és tárgyaló busz bérbeadása, melyek feltételeiről már itt a honlapunkon is tájékozódhat, a megfelelő menüpont kiválasztása után.
			</p>

			<p class = "lead">
				Reméljük hamarosan Önt is az ügyfeleink között köszönthetjük!
			</p>

			<p class="text-center text-uppercase">
				<a id="modal-show-btn" href="javascript:void(0)" role="button" data-toggle="modal" data-target="#miert-modal">Miért mi vagyunk a megfelelő választás?</a>
			</p>
		</div>
	</section>
<?php
include "assets/_includes/_footer.php";
(new Footer())->addScript("/assets/js/index.js")->display();

?>
