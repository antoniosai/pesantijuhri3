<?php
$t = 9;
$a = 5;
$l = 0.5 * $t * $a;
$mod = 12 % 2;

$nilai = 90;
if ($nilai > 85){ //Jika
	$hasil = "A"; //maka
}elseif ($nilai > 75) {
	$hasil = "B";
}elseif ($nilai >= 60) {
	$hasil = "C";
}else{
	$hasil = "D";
}

for ($i=1; $i <= 100; $i++) {
	echo $i." Saya akan rajin belajar<br>";
}

?>