<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Return Book Form</title>
<style>
   .box {
			background-color: #fff;
			border: 2px solid #4CAF50;
			margin: 0 auto;
			padding: 20px;
			max-width: 500px;
			box-shadow: 1px 1px 1px grey;
			border-radius: 10px;
		}
    body {
        background-color: #f2f2f2;
    }
    
    form {
        margin-top: 50px;
        text-align: center;
    }
    
    table {
        margin: 0 auto;
    }
    
    td {
        padding: 10px;
    }
    
    input[type=text], input[type=date] {
        width: 200px;
        padding: 5px;
        border-radius: 5px;
        border: none;
        box-shadow: 1px 1px 1px grey;
    }
    
    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    
    input[type=submit]:hover {
        background-color: #45a049;
    }
    
    label {
        display: inline-block;
        width: 200px;
        text-align: left;
    }
    
    h2 {
        color: #4CAF50;
        text-align: center;
    }
    
</style>

</head>
<body>
	<div class="box">
		<h2>Return Book Form</h2>
		<form method="get" action="./operations/returnbook" >
			<table>
				<tr>
					<td><label for="isbn">BOOK ISBN NUMBER:</label></td>
					<td><input type='text' id="isbn" name='isbn' /></td>
				</tr>
				<tr>
					<td><label for="date">DATE YOU TOOK A BOOK:</label></td>
					<td><input type="date" id="date" name="date"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type='submit' value='Search' /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
