<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix='c'%>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOK DETAILS</title>
<style>
		body {
			background-color: #dce4ef;
		}
		table {
			margin: 0 auto;
			border-collapse: collapse;
			width: 80%;
			color: #333;
			font-size: 14px;
			text-align: left;
		}
		th {
			background-color: #6777ef;
			color: #fff;
			font-weight: bold;
			padding: 10px;
		}
		td {
			padding: 10px;
			border-bottom: 1px solid #ccc;
		}
		caption {
			font-size: 20px;
			font-weight: bold;
			margin-bottom: 10px;
		}
		h1 {
			color: red;
			text-align: center;
			margin-top: 50px;
		}
	</style>
</head>
<body bgcolor="lightblue">
<br/>
<br/>
<br/>
	<c:choose>
		<c:when test="${searchstudent ne null || ! empty searchstudent }">
			<table border='1' align="center">
				<caption>STUDENT  DETAILS </caption>
				<tr>
					
					<th>NAME</th>
					<th>EMAIL</th>
					<th>CONTACT NUMBER</th>
					<th>DEPARTMENT</th>
					
					
				</tr>
				<tr>
					<td>${searchstudent.name }</td>
					<td>${searchstudent.email }</td>
					<td>${searchstudent.contactNumber }</td>
					<td>${searchstudent.department }</td>
					
				</tr>	
			</table>
		</c:when>
		<c:otherwise>
			<h1 style='color:red; text-align: center;'>No Record to display</h1>
			
		</c:otherwise>
	</c:choose>		
</body>
</html>