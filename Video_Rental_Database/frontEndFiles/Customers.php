<!DOCTYPE html>
<html>
<head>
	<title>Customers</title>
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
<font color="#d96459"><font size="6">Customers </font></font>
<table>
	<tr>
		<th>Customer ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gender</th>
		<th>Birthday</th>
		<th>Address</th>
		<th>City</th>
		<th>State</th>
		<th>Country</th>
		<th>Postal Code</th>
		<th>Start Date</th>
	</tr>
	<?php
	$conn = mysqli_connect("localhost", "root","", "videorentals");
	if($conn-> connect_error){
		die("Connection failed:". $conn-> connect_error);
	}
	
	$sql = "SELECT customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate from customers";
	$result = $conn-> query($sql);
	
	if ($result-> num_rows > 0) {
		while ($row = $result-> fetch_assoc()) {
			echo "<tr><td>". $row["customerID"] ."</td><td>". $row["fname"] ."</td><td>". $row["lname"] ."</td><td>". $row["gender"] ."</td><td>" . $row["birthday"] ."</td><td>". $row["addressline"] ."</td><td>" . $row["city"] ."</td><td>". $row["state"] ."</td><td>". $row["country"] ."</td><td>". $row["postalcode"] ."</td><td>". $row["startdate"] ."</td></tr>";
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