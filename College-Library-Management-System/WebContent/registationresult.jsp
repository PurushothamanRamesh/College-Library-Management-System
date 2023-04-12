<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Delete Result Page</title>
    <style>
      body {
        background-color: lightblue;
      }

      h1 {
        font-weight: bold;
        text-align: center;
        margin-top: 50px;
      }

      .success {
        color: green;
      }

      .failure {
        color: red;
      }
    </style>
  </head>
  <body>
    <br>
    <br>
    <br>
    <c:choose>
      <c:when test="${status eq 'success' }">
        <h1 class="success">RECORD REGISTERED SUCCESFULLY</h1>
      </c:when>
      <c:when test="${status eq 'failure' }">
        <h1 class="failure">RECORD REGISTERED FAILED</h1>
      </c:when>
      <c:when test="${status eq 'alreadyexit' }">
        <%
          response.sendRedirect("../Account already exist .jsp");
        %>
      </c:when>
      <c:otherwise>
        <h1 class="failure">SOMETHING WENT WRONG</h1>
        <h1 class="failure">HOME PAGE</h1>
        <%
          response.sendRedirect("../somethingwentwrong.jsp");
        %>
      </c:otherwise>
    </c:choose>
  </body>
</html>
