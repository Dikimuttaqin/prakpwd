<?php
$host="localhost"; //untuk hostnya 
$username="root"; //untuk username nya
$password=""; //untuk passwordnya, yaitu kosong
$databasename="akademik"; //nama db nya, saya memakai akademik

//sintak untuk mengkoneksikan ke database nya
$con=@mysqli_connect($host,$username,$password,$databasename);
if (!$con) {
//jika gagal, maka akan menampilkan errornya
 echo "Error: " . mysqli_connect_error();
exit();
}
?>