<!DOCTYPE html>
<html>
<head>

	<title>Student Entry</title>
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
			height: 50vh;
		}

		h1 {
			margin-bottom: 2em;
		}

		button {
			background-color: #007bff;
			color: #fff;
			padding: 0.5em 1em;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 0px 5px rgba(0,0,0,0.2);
			font-size: 1.3em;
			cursor: pointer;
			margin-bottom: 4em;
			width: 100%;
			max-width: 20em;
		}

		button:hover {
			background-color: #0069d9;
		}

		.login-button {
			margin-bottom: 1em;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Student Entry</h1>
		<button class="login-button" onclick="window.location.href='StudentLogin.jsp'">Login</button>
		<button class="register-button" onclick="window.location.href='StudentRegistration.jsp'">Register</button>
	</div>
</body>
</html>
