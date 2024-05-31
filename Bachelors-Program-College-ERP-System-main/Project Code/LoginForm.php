<html>
<head>
<title> Attendance Management System</title>
<link rel="stylesheet" type="text/css" href="web.css">
</head>
<body>
<div class="slider">
<div class="load">
</div>
<div class="loginbox">
<img src="avatar.png" class="avatar">
<h1>Login Here</h1>
<form method="post" action="loginform.php" >
<p>Username</p>
<input type="text" name="usn" placeholder="Enter Username" value= "" >
<p>Password</p>
<input type="password" name="pass" placeholder="Enter Password" value="" >
<input type="submit" name="submit" value="Login">
</form>
</div>
</body>
</html>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webproject";
if(isset($_POST['usn']))
{
$password1 = $_POST["pass"];
$usn = $_POST["usn"];
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
 die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT pass from students where usn = '$usn' ";
$result = $conn->query($sql);
if ($result->num_rows > 0) 
{
 //output data of each row
while($row = $result->fetch_assoc()) 
 {
 if($row["pass"] == $password1)
 {
 session_start();
$_SESSION['usn'] = $usn;
//echo "<script type='text/javascript'>window.location='att.html';</script>";
echo "<script type='text/javascript'>window.location='dashboard.html';</script>";
 }
 else
 {
 echo "<script type='text/javascript'>alert('wrong user id or 
password');window.location='loginform.php';</script>";
 }
 }
} 
else 
{
$sql1 = "SELECT pass from teachers where email = '$usn' ";
$result1 = $conn->query($sql1);
if ($result1->num_rows > 0) 
{
while($row = $result1->fetch_assoc()) 
 {
 if($row["pass"] == $password1)
 {
 session_start();
$_SESSION['usn'] = $usn; echo "<script 
type='text/javascript'>window.location='TeacherDashboard.html';</script>";
 } 
else {
echo "<script type='text/javascript'>alert('wrong user id or 
password');window.location='loginform.php';</script>";
 
 }
}
}
else
{
echo "<script type='text/javascript'>alert('wrong user id or 
password');window.location='loginform.php';</script>";
}
 
}
$conn->close();
}
?>