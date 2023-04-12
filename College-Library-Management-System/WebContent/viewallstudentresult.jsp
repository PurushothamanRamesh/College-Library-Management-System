<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
<style>
    table {
        border-collapse: collapse;
        width: 80%;
        margin: auto;
    }
    th, td {
        text-align: left;
        padding: 8px;
        border: 1px solid #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
</style>
</head>
<body>
    <h1>Book Details</h1>
    <table>
   
        <tr>
            <th>STUDENT ID </th>
            <th>STUDENT NAME </th>
            <th>EMAIL ID </th>
            <th>CONTACT NUMBER</th>
            <th>DEPARTMENT </th>
        </tr>
         <c:forEach var="data" items="${data}">
            <tr>
           
                <td>${data.id}</td>
                <td>${data.name}</td>
                <td>${data.email}</td>
                <td>${data.contactNumber}</td>
                <td>${data.department}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
