
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewpoint" content="width=device-width" , initial-scale="1.0">
        <title>Education  portal</title>
        <link rel="stylesheet" href="style.css">
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
        <div class="container">
	      <div class="row">
		   <div class="col-md-12">

			<?php
		   include( "database.php" );
		   if ( isset( $_POST[ 'submit' ] ) ) {
			$title = $_POST[ 'videotitle' ];
			$v_url = $_POST[ 'VideoURL' ];
			$v_info = $_POST[ 'Videoinfo' ];
			

			$done = "
					<center>
					<div class='alert alert-success fade in __web-inspector-hide-shortcut__'' style='margin-top:10px;'>
					<a href='#' class='close' data-dismiss='alert' aria-label='close' title='close'>&times;</a>
					<strong><h3 style='margin-top: 10px;
					margin-bottom: 10px;'> Video added Sucessfully.</h3>
					</strong>
					</div>
					</center>
					";

			$sql = "INSERT INTO `Video` (`V_Title`, `V_Url`, `V_Remarks`) VALUES ('$title','$v_url','$v_info')";
			//close the connection
			mysqli_query( $connect, $sql );

			echo $done;
		}

		?>
		
			<fieldset>
				<legend>Add Videos</legend>
				<form action="" method="POST" name="AddAssessment">
					<table class="table table-hover">

						<tr>
							<td><strong>Video Title  </strong>
							</td>
							<td>
                            <textarea name="videotitle" class="form-control" rows="1" cols="150"></textarea>
							</td>

						</tr>
						<tr>
							<td><strong>Video URL</strong> </td>
							<td>
								<textarea name="VideoURL" class="form-control" rows="1" cols="150"></textarea>
							</td>
						</tr>
						<tr>
							<td><strong>Video Description</strong> </td>
							<td>
								<textarea name="Videoinfo" class="form-control" rows="5" cols="150"></textarea>
							</td>
						</tr>
                        <tr>
							<td><strong> Course Difficulty</strong> </td>
							<td>
								<textarea name="Videoinfo" class="form-control" rows="1" cols="150"></textarea>
							</td>
						</tr>
                        <tr>
							<td><strong> Prerequisites</strong> </td>
							<td>
								<textarea name="Videoinfo" class="form-control" rows="5" cols="150"></textarea>
							</td>
						</tr>
                        <tr>
							<td><strong> Course Notes</strong> </td>
							<td>
								<textarea name="Videoinfo" class="form-control" rows="2" cols="150"></textarea>
							</td>
						</tr>
						
						<td><button type="submit" name="submit" class="btn btn-success" style="border-radius:0%">Add Video</button>
						</td>
						
					</table>
				</form>
			</fieldset>
		</div>
	</div>
	<?php include('allfoot.php');  ?>