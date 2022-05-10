<?php

header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: *");
$conn = mysqli_connect("localhost","root","","multivendor") or die("Error " . mysqli_error($connection));

$emparray = array();
           $username = $_GET["username"];
		   $email = $_GET["email"];
		   $password = $_GET["password"];
           $query = "INSERT INTO users(username, email, password) VALUES('$username','$email','$password')";  
            
		   if ($conn->query($query) === TRUE) {
				echo "s";
		   } else {
				echo "Error: " . $query . "<br>" . $conn->error;
		   }

$conn->close();
           
?>