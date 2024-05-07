<!-- Connect form  -->
<?php
define('HOST','pumipat.trueddns.com');
define('USER','root');
define('PASS','password');
define('DATABASE','Arai Yu Bon Hua Gu Wa');
$con =mysqli_connect(HOST,USER,PASS,DATABASE, 63712);
if($con->connect_error){
die("Connection error:" . $con->connect_error);
}else{
mysqli_set_charset($con, "utf8");}
?>