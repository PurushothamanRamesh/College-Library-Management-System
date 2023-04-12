<!DOCTYPE html>
<html>
<head>
	<title>Student Login</title>
	<style>
	
	
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}

		.container {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
		}

		form {
			background-color: #fff;
			padding: 4em;
			border-radius: 5px;
			box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
		}

		input[type="text"], input[type="email"], input[type="password"], select {
			display: block;
			margin-bottom: 1em;
			padding: .6em;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
			width: 100%;
			
			font-size: 1em;
		}

		input[type="submit"] {
			background-color: #007bff;
			color: #fff;
			padding: 0.7em;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
			width: 100%;
			font-size: 1em;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #0069d9;
		}
	</style>
</head>
<body>
	<div class="container">
		
<form method="post" action="./StudentController/Student_login">		
			<h2>Student Login</h2>
			<label for="email">Email</label>
			<input type="email" id="email" name="email" required>
			<label for="phone">Phone</label>
			<input type="text" id="phone" name="phone" required>
			<label for="department">Department</label>
			<select id="department" name="department" required>
				<option value="">Select Department</option>
				<option value="science"> Science</option>
				<option value="engineering">Engineering</option>
				<option value="arts">arts</option>
			</select>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" required>
			<input type="submit" value="Login">
		</form>
	</div>
</body>
</html>
