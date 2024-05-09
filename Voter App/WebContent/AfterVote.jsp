<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>

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
h3{
color:green;
}
h1{
color:blue;
}
</style>

<body>
<div class="container">
<h3>YOU HAVE SUCCESSFULLY VOTED</h3>
<h1>Thank You</h1>
<form id="form" action="VotingForm" method="post">
<input type="button" value="Log Out" onclick="location.href='index.jsp'">
</form>
<%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");


%>
<script>
history.forword();

</script>
</div>


</body>
</html>