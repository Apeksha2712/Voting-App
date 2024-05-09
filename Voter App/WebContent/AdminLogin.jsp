<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login
</title>
</head>
<style>
body {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	display: flex;
	justify-content: center;
	background-image:url('votingimage1.jpg');
	background-size:cover;
	background-position:center center;
	background-repeat:no-repeat;
}

.container {
	width: 40%;
	max-width: 400px;
	margin-top: 130px;
	padding: 20px;
	background-color: #AEFD6C;
	box-shadow: 0 0 10px rgba(0, 0, 1, 0.5);
	border-radius: 10px;
	text-align: center;
}</style>
<body>
<div class="container">
<form method="post" action="adminform">
Name: <input type="text" name="adminname"><br><br>
Password: <input type="password" name="password"><br><br><br>
<input type="submit" value="Login">
            
</form></div>
</body>
</html>