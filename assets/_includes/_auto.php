<?php
class Auto {
	public static function display($auto) {
?>
		<div class="row">
			<div class="col-sm-12 text-center">
				<h2><?php echo $auto['nev']; ?></h2>
			</div>
			<div class="col-sm-6 auto-img text-center ak">
				<img class="img-responsive" src="assets/img/cars/<?php echo $auto['id']; ?>.JPG" alt="car-pic">
			</div>
			<div class="col-sm-6">
				<div>
					<h4>Általános adatok:</h4>
					<table class="table table-responsive">
						<tr>
							<td>Állapot:</td><td><?php echo $auto['allapot']; ?></td>
						</tr>
						<tr>
							<td>Sebességváltó:</td><td><?php echo $auto['sebvalto']; ?></td>
						</tr>
						<tr>
							<td>Üzemanyag:</td><td><?php echo $auto['uzemanyag']; ?></td>
						</tr>
						<tr>
							<td>Fogyasztás:</td><td><?php echo $auto['fogyasztas']; ?></td>
						</tr>
						<tr>
							<td>Klíma:</td><td><?php echo $auto['klima']; ?></td>
						</tr>
						<tr>
							<td>Elektromos ablak:</td><td><?php echo $auto['ablak']; ?></td>
						</tr>
						<tr>
							<td>Autórádió:</td><td><?php echo $auto['radio']; ?></td>
						</tr>
					</table>
					<h4>Bérleti díjak:</h4>
					<table class="table table-responsive">
						<tr>
							<td>1 nap:</td><td><?php echo $auto['1nap']; ?></td>
						</tr>
						<tr>
							<td>2-3 nap:</td><td><?php echo $auto['2nap']; ?></td>
						</tr>
						<tr>
							<td>4-14 nap:</td><td><?php echo $auto['4nap']; ?></td>
						</tr>
						<tr>
							<td>15-30 nap:</td><td><?php echo $auto['15nap']; ?></td>
						</tr>
					</table>
				</div>
			</div>
				<div class="col-sm-12">
					<hr>
			</div>
		</div>
<?php
	}
}
