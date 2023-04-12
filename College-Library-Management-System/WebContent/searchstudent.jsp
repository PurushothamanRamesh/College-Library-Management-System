<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<body bgcolor="lightblue">
	<br />
	<br />
	<br />
	<form method="get" action="./operations/searchstudent" >
		<table align='center'>
			<tr>
				<td>ENTER THE STUDENT ID :: </td>
				<td><input type='text' name='isbn' /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type='submit' value='search' /></td>
			</tr>
		</table>
	</form>
</body>
</html>