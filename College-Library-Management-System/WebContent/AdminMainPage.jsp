<!DOCTYPE html>
<html>
<head>
	<title>Admin View</title>
	<link rel="stylesheet" type="text/css" href="adminview.css">
	<style>
	body {
	margin: 0;
	padding: 0;
	background-color: #f2f2f2;
}

.container {
	width: 80%;
	margin: auto;
	text-align: center;
	padding-top: 50px;
}

h1 {
	font-size: 36px;
	color: #333;
	margin-bottom: 30px;
}

ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
}

li {
	margin: 20px;
}

a {
	display: block;
	padding: 20px;
	background-color: #2ecc71;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	transition: all 0.3s ease;
}

a:hover {
	background-color: #27ae60;
}
	
	
	</style>
</head>
<body>
	<div class="container">
		<h1>Admin View</h1>
		<ul>
			<li><a href="../addBook.jsp">ADD BOOK </a></li>
			<li><a href="../deletebook.jsp">DELETE BOOK </a></li>
			<li><a href="../searchbook.jsp">SEARCH BOOK</a></li>
			<li><a href="../searchstudent.jsp">SEARCH STUDENT</a></li>
			<li><a href="../deletestudent.jsp">DELETE STUDENT</a></li>
			<li><a href="../viewallstudent.jsp">VIEW ALL STUDENTS</a></li>
		</ul>
	</div>
</body>
</html>
