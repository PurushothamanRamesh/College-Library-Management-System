<!DOCTYPE html>
<html>
<head>
<h1></h1>
	<h1 align="center">Library Management System</h1>

	<title>Librarian and Student Entry</title>
	<style>
		.container {
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    height: 100vh;
    background-color: #f2f2f2;
}


		.box {
			width: 300px;
			height: 120px;
			padding: 50px;
			background-color: #fff;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.3);
		}

		.librarian {
			background-color: #e6f2ff;
		}

		.student {
			background-color: #ffffe6;
		}

		h1 {
			text-align: center;
			margin-top: 0;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0,0,0,0.1);
		}

		input[type="submit"] {
			width: 100%;
			padding: 10px;
			background-color: #4CAF50;
			color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="box librarian">
			<h1>Librarian Entry</h1>
			<form action="Adminlogin.jsp">
				  <input  type="submit" value="ENTER INTO ADMIN ">
		    </form>
		</div>

		<div class="box student">
			<h1>Student Entry</h1>
			<form action="studententry.jsp">
				<input type="submit" value="ENTER INTO STUDENT">
			</form>
		</div>
	</div>
</body>
</html>
