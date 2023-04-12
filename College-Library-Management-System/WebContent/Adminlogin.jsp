<!DOCTYPE html>
<html>
<head>
	<title>Librarian Login</title>
	<style>
		body {
			background-color: #f2f2f2;
		}
		form {
			background-color: #fff;
			padding: 20px;
			margin: 50px auto;
			max-width: 400px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
			text-align: center;
		}
		h1 {
			color: #2e86c1;
		}
		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
			font-size: 16px;
			color: #666;
			background-color: #f5f5f5;
		}
		input[type="submit"] {
			background-color: #2e86c1;
			color: #fff;
			border: none;
			border-radius: 5px;
			padding: 10px 20px;
			font-size: 16px;
			cursor: pointer;
			transition: background-color 0.3s;
		}
		input[type="submit"]:hover {
			background-color: #1c639b;
		}
	</style>
</head>
<body>
	<form method="post" action="./Admin/Admin_login">
		<h1>Librarian Login</h1>
		<input type="text" name="email" placeholder="Email" required>
		<input type="password" name="password" placeholder="Password" required>
		<input type="submit" value="Login">
	</form>
</body>
</html>
