<?php
require_once "assets/_includes/_header.php";
require_once "assets/_includes/_adatbazis.php";
Header::display("Ár kalkulátor");
$db = new Adatbazis();
$autok = $db->getAutokWithPrices();

?>
	<section id="content">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<label for="fajta" class="text-nowrap">Bérelni kívánt gépjármű:</label>
					<select name="fajta" id="fajta" class="form-control">
						<?php
						$price = "";
						$k=0;

						while ($row = $autok->fetch_assoc()) {
							print_r($row);
							$price = "";
							$k++;
							for($i = 1; $i < 31; $i++) {
								if(isset($row["COL$i"])) {
									$price .= " data-".$i."nap=\"".$row["COL$i"]."\" ";
								}
							}
							echo '<option id = "auto'.$k.'" data-kep="' . $k . '.JPG"'.$price.' >' . $row['nev'] . '</option>';
						}
						$autok->free();
						$autok = $db->getAutokWithPrices();
						?>
					</select>
				</div>
				<div class="col-sm-3">
					<label for="idotartam" class="text-nowrap">Bérlet időtartama:</label><select name="idotartam" id="idotartam" class="form-control">
						<?php
						for($i = 1; $i < 31; $i++) {
							?><option value="<?php echo $i.'nap';?>" data-length="1"><? echo $i.' nap' ?></option><?
						}
						?>
					</select></div>
				<div class="col-sm-3">
					<label for="kulfold" class="text-nowrap">Külföldi gépkocsi használat:</label>
					<select name="kulfold" id="kulfold" class="form-control">
						<option value="igen">Igen</option>
						<option value="nem">Nem</option>
					</select>
				</div>
				<div class="col-sm-2 col-sm-offset-1"><p>Fizetendő:</p>
					<span id="fizetendo" class="text-primary form-control-static"></span><span>.- +ÁFA</span>
				</div>
			</div>
			<div class="text-center">
				<img id="car-img" class="img-responsive kepecske" src="">
			</div>
<!--
		<form class="" action="index.html" method="post">
			<div class="">
				<div class="form-group">
			    <label for="exampleInputEmail1">Név</label>
			    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Teljes név">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Mikortól</label>
			    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Dátum">
			  </div>
			</div>
			<div>
				<label for="exampleInputEmail1">Hány napra</label>
				<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Napok száma">
			</div>
			<div class="form-group">
				<label for="fajta2">Melyik autó</label>
				<select name="fajta" id="fajta" class="form-control">
					<?php
					while ($row = $autok->fetch_assoc()) {
						echo '<option data-kep="' . $row['kep'] . '" data-1nap="' . $row['1nap'] . '" data-2nap="' . $row['2nap'] . '" data-4nap="' . $row['4nap'] . '" data-15nap="' . $row['15nap'] . '">' . $row['nev'] . '</option>';
					}
					?>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Megjegyzés</label>
				<textarea class="form-control" rows="3"></textarea>
			</div>
				<input class="btn btn-default" type="submit" value="Küldés">
		</form>
	-->
	</section>
<?php
require_once "assets/_includes/_footer.php";
(new Footer())->addScript("assets/js/arkalkulator.js")->display();
?>
