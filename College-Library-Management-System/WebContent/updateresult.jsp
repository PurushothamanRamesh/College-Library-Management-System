<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>  
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOK DETAILS</title>
<style>
.box {
  border: 2px solid #008CBA;
  background-color: #F0F8FF;
  padding: 20px;
  margin: 20px;
  text-align: center;
  color: #008CBA;
  font-weight: bold;
  font-size: 24px;
}
</style>
</head>
<body bgcolor="lightblue">
<br>
<br>
<br>
<div class="box">
	<c:choose>
		<c:when test="${status eq 'success'}">
			<h1 style="color: green; text-align: center;">RECORD MODIFIED 
				SUCCESSFULLY</h1>
		</c:when>
		<c:when test="${status eq 'failure'}">
			<h1 style="color: red; text-align: center;">RECORD MODIFIED
				FAILED</h1>
		</c:when>
		<c:otherwise>
			<h1 style="color: green; text-align: center;">RECORD NOT AVAILABLE FOR UPDATE</h1>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>
