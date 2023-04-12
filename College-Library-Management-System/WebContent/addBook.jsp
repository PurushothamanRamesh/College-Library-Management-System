<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add Book</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}
		
		form {
			margin: auto;
			padding: 20px;
			width: 400px;
			background-color: white;
			box-shadow: 0 4px 6px rgba(0,0,0,.3);
			border-radius: 5px;
		}
		
		h2 {
			margin-top: 0;
			text-align: center;
			color: #333;
		}
		
		label {
			display: block;
			margin-bottom: 10px;
			color: #333;
		}
		
		input[type="text"],
		select {
			display: block;
			padding: 10px;
			width: 100%;
			border-radius: 3px;
			border: 1px solid #ccc;
			margin-bottom: 20px;
			font-size: 16px;
			color: #333;
			box-sizing: border-box;
		}
		
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 10px;
			border: none;
			border-radius: 3px;
			cursor: pointer;
			font-size: 16px;
		}
		
		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<form method="post" action="./operations/addBook" >
		<h2>Add Book</h2>
		<label for="bookname">Book Name</label>
		<input type="text" id="bookname" name="bookname" required>
		
		<label for="author">Author</label>
		<input type="text" id="author" name="author" required>
		
		<label for="publisher">Publisher</label>
		<input type="text" id="publisher" name="publisher" required>
		
		<label for="bookid">Bookid</label>
		<input type="text" id="bookid" name="bookid" required>
		
		<input type="submit" value="Add Book">
	</form>
</body>
</html>
