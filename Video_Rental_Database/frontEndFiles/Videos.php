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
<font color="#d96459"><font size="6">Videos</font></font>


<table>
	<tr>
		<th>Product ID</th>
		<th>Video Name</th>
		<th>Genre</th>
		<th>Video Type</th>
		<th>Quantity</th>
		<th>Rent Price</th>
		<th># of Discs</th>
		<th>MPAA Rating</th>
	</tr>
	<?php
	$conn = mysqli_connect("localhost", "root","", "videorentals");
	if($conn-> connect_error){
		die("Connection failed:". $conn-> connect_error);
	}
	
	$sql = "SELECT productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings from videos";
	$result = $conn-> query($sql);
	
	if ($result-> num_rows > 0) {
		while ($row = $result-> fetch_assoc()) {
			echo "<tr><td>". $row["productID"] ."</td><td>". $row["videoname"] ."</td><td>". $row["genre"] ."</td><td>". $row["videotype"] ."</td><td>". $row["quantity"] ."</td><td>". $row["rentprice"] ."</td><td>". $row["numdiscs"] ."</td><td>". $row["mpaaratings"] ."</td></tr>";
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