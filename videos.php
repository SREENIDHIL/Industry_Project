<?php 		
include('database.php');
$sql=" SELECT * FROM video ";
$rs=mysqli_query($connect,$sql);?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewpoint" content="width=device-width" , initial-scale="1.0">
        <title>Education  portal</title>
        <link rel="stylesheet" href="./style.css">
    </head>
    <body>
        <!-- Navigation -->
        <nav>
            <img src="images/2.png" alt="logo">
            <div class="navigation">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#course">Courses</a></li>
                    <li><a href="#footer">Contact</a></li>
                </ul>
                <!-- <img id="menu" src="images/menu.jpg" alt=""> -->
            </div>
        </nav>
        <div class="course-box">
    <?php			
    $count=1;
    
 	while($row=mysqli_fetch_array($rs))
	{ 
	?>
    
        
            <div class="courses">
                <img src="images/courses.jpg" alt="">
                    <div class="details">
                        <span>Updated 15/08/2022</span>
                        <a href="#"><h6><?php echo $row['V_Title']?></h6></a>
                        <h5><?php echo $row['Course Difficulty']?></h5>
                        <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                
                            </div>
                    </div>
                    <div class="cost">
                            FREE
                    </div>
                </div>
                
        
        	
       
	<?php
	$count++;}
	?>
    </div>
    </body>
		
		
	

		
	
