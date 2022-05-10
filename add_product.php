<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: *");
$conn = mysqli_connect("localhost","root","","multivendor") or die("Error " . mysqli_error($connection));

$emparray = array();
           $proname = $_GET["proname"];
		   $short_line= $_GET["short_line"];
		   $detail_des = $_GET["detail_des"];
		   $img_1 = $_GET["img_1"];
		   $img_2 = $_GET["img_2"];
		   $img_3 = $_GET["img_3"];
		   $img_4 = $_GET["img_4"];
		   $size = $_GET["size"];
		   $actual_p = $_GET["actual_p"];
		   $discount_p = $_GET["discount_p"];
		   $selling_p = $_GET["selling_p"];
		   $stock = $_GET["stock"];
		   $categ = $_GET["categ"];
           $query = 
		   "INSERT INTO product
		   (proname, short_line, detail_des,img_1,img_2,img_3,img_4,size,actual_p,discount_p,selling_p,stocks,categ) 
		   VALUES
		   ('$proname ','$short_line','$detail_des','$img_1',' $img_2','$img_3','$img_4','$size','$actual_p','$discount_p','$selling_p','$stock','$categ')";  
            
		   if ($conn->query($query) === TRUE) {
				echo "s";
		   } else {
				echo "Error: " . $query . "<br>" . $conn->error;
		   }

$conn->close();
           
?>