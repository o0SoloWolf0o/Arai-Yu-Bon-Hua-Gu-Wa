<?php
require_once('connect3.php');
$sql = 'SELECT * FROM Data';
$r = mysqli_query($con, $sql);
$result = array();
while($row = mysqli_fetch_array($r)){
array_push($result,array(
'ID' => $row['ID'],
'Catagory' => $row['Catagory'],
'Value' => $row['Value']
));
}
echo json_encode(array('result' => $result));
mysqli_close($con)
?>