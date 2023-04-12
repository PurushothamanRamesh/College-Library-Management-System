<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student Details</title>
    <style>
      /* Center the content vertically and horizontally */
      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f5f5f5;
      }
      
      /* Style the form */
      form {
        background-color: white;
        padding: 2em;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        text-align: center;
      }
      
      /* Style the form inputs and labels */
      label, input[type="submit"] {
        display: block;
        margin: 1em 0;
        width: 100%;
        box-sizing: border-box;
        font-size: 1.2em;
      }
      
      input[type="text"] {
        padding: 0.5em;
        border: none;
        border-bottom: 2px solid #ddd;
        font-size: 1.2em;
      }
      
      /* Style the error message */
      .error {
        color: red;
        margin-top: 1em;
      }
      
      /* Style the success message */
      .success {
        color: green;
        margin-top: 1em;
      }
    </style>
  </head>
<body bgcolor="lightblue">
	<br />
	<br />
	<br />
	<form method="get" action='./operations/deletebook'>
	<h1>Delete Book Details</h1>
		<table align='center'>
			<tr>
				<td>BOOK ISBN NUMBER  </td>
				<td><input type='text' name='bookid' /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type='submit' value='delete' /></td>
			</tr>
		</table>
	</form>
</body>
</html>