<?php
define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   define('DB_DATABASE', 'multivendor');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   
   session_start();
   
      // username and password sent from form 
      
      $myemail = mysqli_real_escape_string($db,$_GET['email']);
      $mypassword = mysqli_real_escape_string($db,$_GET['password']); 
      
      $sql = "SELECT id FROM users WHERE email = '$myemail' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $id = $row['id'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         echo $id;
      }else {
         echo "Your Login Name or Password is invalid";
      }
        
?>