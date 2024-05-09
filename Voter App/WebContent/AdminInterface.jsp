<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
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
}
h1{
color:green;
}
.btn1{
text-decoration:none;
padding: 10px 32px;
text-align: center;
background-color: #4CAF50;
color:white;
border:none;                
font-size: 16px;
border-radius: 4px;
border: 2px solid;
align-item:center;            
}

.btn2{
text-decoration:none;
padding: 10px 32px;
text-align: center;
background-color: #4CAF50;
color:white;
border:none;                
font-size: 16px;
border-radius: 4px;
border: 2px solid;
align-item:center; 
}

.logout{
 font-size: 20px;}
.logout:hover{
color:red;
}

</style>
<body>
<div class="container">
<h1>Successfully Login</h1><br>
<a href="CandidateView.jsp" target="_blank" class="btn1">View Candidates</a>
<br><br><br><br>
<a href="ElectionResult.jsp" target="_blank" class="btn2">Election Result</a><br><br><br>
<a href="index.jsp" class="logout">LOGOUT</a>
</div>
</body>
</html>