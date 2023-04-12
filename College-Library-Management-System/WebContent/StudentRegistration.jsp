<!DOCTYPE html>
<html>
<head>
	<title>Student Registration</title>
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

		h1 {
			margin-bottom: 2em;
		}

		form {
			background-color: #fff;
			padding: 2em;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
			max-width: 30em;
			width: 100%;
		}

		label {
			display: block;
			margin-bottom: 0.5em;
			font-size: 1.2em;
			font-weight: bold;
			color: #007bff;
		}

		input[type="text"], input[type="email"], input[type="tel"], input[type="password"], select {
			background-color: #f2f2f2;
			border: none;
			padding: 0.5em;
			margin-bottom: 1em;
			width: 100%;
			border-radius: 5px;
			font-size: 1em;
			box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
		}

		input[type="submit"] {
			background-color: #007bff;
			color: #fff;
			padding: 0.5em 1em;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
			font-size: 1em;
			cursor: pointer;
			margin-top: 1em;
			width: 100%;
			max-width: 10em;
		}

		input[type="submit"]:hover {
			background-color: #0069d9;
		}

		.error-message {
			color: red;
			font-size: 0.8em;
			margin-top: 0.5em;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Student Registration</h1>
		<form method="post" action="./StudentController/student_register">
			<label for="name">Student Name:</label>
			<input type="text" id="name" name="name" required>

			<label for="email">Student Email:</label>
			<input type="email" id="email" name="email" required>

			<label for="contact-number">Student Contact Number:</label>
			<input type="tel" id="contact-number" name="contact-number" required>

			<label for="password">Student Password:</label>
			<input type="password" id="password" name="password" required>

			<label for="department">Department:</label>
			<select id="department" name="department" required>
				<option value="">Select Department</option>
				<option value="science"> Science</option>
				<option value="engineering">Engineering</option>
				<option value="arts">arts</option>
			</select>

			<input type="submit" value="Register" onclick="validateEmail()">
			<div id="email-error" class="error-message"></div>
