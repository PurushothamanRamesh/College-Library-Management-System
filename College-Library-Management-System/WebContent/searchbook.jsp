<!DOCTYPE html>
<html>
<head>
<title>Library Management System - Take Book</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
}

.form-container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h2 {
	margin-top: 0;
	margin-bottom: 20px;
	text-align: center;
	color: #333333;
	font-size: 28px;
}

.form-input {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-size: 18px;
	color: #333333;
}

input[type="text"], input[type="date"] {
	width: 100%;
	padding: 12px;
	border-radius: 4px;
	border: 1px solid #ccc;
	background-color: #f8f8f8;
	font-size: 16px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: #ffffff;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

input[type="submit"]:focus {
	outline: none;
}

.form-input.error input[type="text"], .form-input.error input[type="date"]
	{
	border: 1px solid #ff0000;
	background-color: #ffe6e6;
}

.form-input.error label {
	color: #ff0000;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Search and Get a Book </h2>
		<form method="get" action="./operations/searchbook" >
			<div class="form-input">
				<label for="book_title">Book Title:</label> <input type="text"
					id="book_title" name="book_title" required>
			</div>
			<div class="form-input">
				<label for="author">Author:</label> <input type="text" id="author"
					name="author" required>
			</div>
			<input type="submit" value="Take">
		</form>
	</div>
</body>
</html>
