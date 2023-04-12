<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix='c'%>  
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
<body>
	<c:choose>
		<c:when test="${searchbook ne null || ! empty searchbook }">
			<table>
				<caption>BOOK DETAILS</caption>
				<thead>
					<tr>
				    <th>BOOK ID</th>
					<th>BOOK NAME</th>
					<th>AUTHOR</th>
					<th>PUBLISHER</th>
			
				</tr>
				<tr>
					<td>${searchbook.bookid }</td>
					<td>${searchbook.bookname }</td>
					<td>${searchbook.author }</td>
					<td>${searchbook.publisher }</td>
					
				</tr>	
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<h1>No Record to Display</h1>
			<h1 style="color: red; text-align: center; font: bold;">HOME PAGE 
			</h1>
			<%
       			 response.sendRedirect("../somethingwentwrong.jsp");
        	%>
		</c:otherwise>
	</c:choose>		
</body>
</html>
