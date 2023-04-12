<!DOCTYPE html>
<html>
<head>
	<title>View All students</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}
		h1 {
			text-align: center;
			color: #333;
			margin-top: 50px;
		}
		form {
			margin: 0 auto;
			width: 20%;
			padding: 20px;
			background-color: #fff;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-shadow: 0 0 10px #ccc;
		}
		label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
			color: #333;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			border: none;
			padding: 10px 20px;
			border-radius: 5px;
			cursor: pointer;
			font-size: 16px;
			margin-top: 20px;
		}
		input[type="submit"]:hover {
			background-color: #333;
		}
	</style>
</head>
<body >
	<h1>List of students </h1>
	<form method="post" action="./operations/viewallstudents" >
		<label >Click the button to view all students :</label>
		<input align="center" type="submit" value="View All students " >
	</form>
</body>
</html>
