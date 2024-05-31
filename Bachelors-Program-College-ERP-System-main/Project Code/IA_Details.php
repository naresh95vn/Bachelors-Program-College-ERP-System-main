<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webproject";
session_start();
if(!empty($_SESSION["usn"]))
{
$usn = $_SESSION["usn"];
}
else
{
print_r("not working");
}
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
 die("Connection failed: " . $conn->connect_error);
}
$sql = " SELECT s.subName, i.* from IaMarks i inner join subjects s on s.subID=i.subID where i.usn='$usn' 
";
$result = $conn->query($sql);
$data3 = array();
while($row = $result->fetch_assoc()) 
{
$data3[] = $row;
}
echo json_encode($data3);
?>