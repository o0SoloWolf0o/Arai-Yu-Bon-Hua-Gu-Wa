<?php
require_once('connect.php');
$sql = 'SELECT * FROM Catagory';
$r = mysqli_query($con, $sql);
$result = array();
while($row = mysqli_fetch_array($r)){
array_push($result,array(
'id' => $row['id'],
'Catagory' => $row['Catagory'],
'Value' => $row['Value']
));
}
echo json_encode(array('result' => $result));
mysqli_close($con)
?>