<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
<style>
   .box {
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        margin: 0 auto;
        padding: 20px;
        max-width: 500px;
    }
    body {
        background-color: lightblue;
    }
    
    form {
        margin-top: 50px;
        text-align: center;
    }
    
    input[type=text] {
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
    
</style>
</head>
<body>
    <div class="box">
        <form action="./operations/updatebook" method="get">
            <label for="bookname">Bookname:</label>
            <input type="text" id="bookname" name="bookname" required><br><br>
            
            <label for="author">AUTHOR:</label>
            <input type="text" id="author" name="author" required><br><br>
            
            <label for="publisher">BUBLISHER:</label>
            <input type="text" id="publisher" name="publisher" required><br><br>
            
            <label for="bookid">BOOK ID :</label>
            <input type="text" id="bookid" name="bookid" required><br><br>
            
            <input type="submit" value="Update Book">
        </form>
        <br>
        <a href="./index.jsp">Back to Home Page</a>
    </div>
</body>
</html>
