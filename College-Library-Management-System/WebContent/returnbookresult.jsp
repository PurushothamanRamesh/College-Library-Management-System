	<!DOCTYPE html>
	<html>
	<head>
		<title>Return Book Result</title>
		<style>
			body {
				background-color: #f2f2f2;
				font-family: Arial, sans-serif;
			}
			.box {
				background-color: #fff;
				border: 1px solid #ccc;
				margin: 0 auto;
				padding: 20px;
				max-width: 500px;
			}
			h1 {
				text-align: center;
			}
			p {
				margin-top: 20px;
				text-align: center;
			}
			a {
				color: #4CAF50;
				text-decoration: none;
			}
			a:hover {
				text-decoration: underline;
			}
		</style>
	</head>
	<body>
		<div class="box">
			<h1>Return Book Result</h1>
			<p><%= request.getAttribute("returnbook") %></p>
			<p><a href="../index.jsp">Go to Home Page</a></p>
		</div>
	</body>
	</html>
	