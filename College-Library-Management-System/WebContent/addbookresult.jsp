<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix='c'%>  
 

<!DOCTYPE html>
<html>
<head>
	<title>Success</title>
	<style>
		body {
			background-color: #f5f5f5;
			font-family: Arial, sans-serif;
		}
		.container {
			background-color: #fff;
			margin: 100px auto;
			padding: 20px;
			text-align: center;
			width: 50%;
		}
		h1 {
			color: #008000;
			font-size: 32px;
			margin-top: 0;
		}
		p {
			color: #000;
			font-size: 18px;
		}
		button {
			background-color: #008000;
			border: none;
			color: #fff;
			cursor: pointer;
			font-size: 18px;
			padding: 10px 20px;
			margin-top: 20px;
		}
		button:hover {
			background-color: #006600;
		}
	</style>
</head>
<body>
	<c:choose>
		<c:when test="${status eq 'success' }">
			<div class="container">
				<h1>Success</h1>
				<p>Your book has been added to the library.</p>
			<button onclick="window.location.href='../viewallbooks.jsp'">View All Books</button>
			</div>
		</c:when>
		
		<c:when test="${status eq 'failure' }">
			<div class="container">
				<h1>Failure</h1>
				<p>Your book not added to the library.</p>
				<button onclick="window.location.href='../viewallbooks.jsp'">View All Books</button>
			</div>
		</c:when>
	</c:choose>	
</body>
</html>
