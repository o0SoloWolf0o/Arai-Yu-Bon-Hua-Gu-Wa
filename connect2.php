<?php
define('HOST','192.168.1.46');
define('USER','root');
define('PASS','password');
define('DATABASE','Arai Yu Bon Hua Gu Wa');
$con =mysqli_connect(HOST,USER,PASS,DATABASE, 3306);
if($con->connect_error){
die("Connection error:" . $con->connect_error);
}else{
mysqli_set_charset($con, "utf8");}
?>