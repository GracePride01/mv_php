<?php

header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: *");
$conn = mysqli_connect("localhost","root","","multivendor") or die("Error " . mysqli_error($connection));

$emparray = array();
           
		   $email = $_GET["email"];
		   $password = $_GET["password"];
           $query = "SELECT * FROM users WHERE email='$email' and password= '$password'";  
		   $result = mysqli_query($conn, $query);
		   $r  = array();
           $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		   $r[] = $row;
		   
		   $count = mysqli_num_rows($result);
		   if ($count==1) {
			    
				print json_encode($row);
		   } else {
				echo "Your Login Name or Password is invalid";
		   }

$conn->close();
           
?>