<!DOCTYPE html>
<html>
<head>
	<title>Videos</title>
	<style type="text/css">
	table {
		border-collapse: collapse;
		width: 100%;
		color: #d96459;
		font-family: monospace;
		font-size: 15px;
		text-align: left;
		}
	th {
		background-color: #d96469;
		color: white;
		}
	tr:nth-child(even)	{background-color: #f2f2f2}
	</style>
</head>
<body>

<center> <font color="#d96459"><font size="6">Video Rental Database </font></font>
<br><br>
<form method = "post" action="Main.php">
<input type="submit" value="Main" name = "Main">
</form>
</center>
<font color="#d96459"><font size="6">Rentals</font></font>


<table>
	<tr>
		<th>Rental ID</th>
		<th>Rent Date</th>
	
	</tr>
	<?php
	$conn = mysqli_connect("localhost", "root","", "videorentals");
	if($conn-> connect_error){
		die("Connection failed:". $conn-> connect_error);
	}
	
	$sql = "SELECT rentalID, rentDate from rentals";
	$result = $conn-> query($sql);
	
	if ($result-> num_rows > 0) {
		while ($row = $result-> fetch_assoc()) {
			echo "<tr><td>". $row["rentalID"] ."</td><td>". $row["rentDate"] ."</td></tr>" ;
		}
		echo "</table>";
	}
		else{
			echo "0 result";
		}
		
		$conn-> close();
	?>
	</table>
	</body>
	</html>