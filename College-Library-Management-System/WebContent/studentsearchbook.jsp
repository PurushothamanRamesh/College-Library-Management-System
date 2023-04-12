<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">
	<br />
	<br />
	<br />
	<form method="get" action="./StudentController/searchbook" >
		<table align='center'>
			<tr>
				<td>BOOK ISBN NUMBER</td>
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