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
            <th>Book ID</th>
            <th>BOOK NAME</th>
            <th>AUTHOR</th>
            <th>PUBLISHER</th>
        </tr>
         <c:forEach var="data" items="${data}">
            <tr>
            
                <td>${data.bookid}</td>
                <td>${data.bookname}</td>
                <td>${data.author}</td>
                <td>${data.publisher}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
