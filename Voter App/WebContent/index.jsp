
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
	box-sizing: border-box;	
	background-image:url('votingimage1.jpg');
	background-size:cover;
	background-position:center center;
	background-repeat:no-repeat;
	display: flex;
	justify-content: center;
	
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

h1 {
	text-align: center;
}

form {
	text-align: center;
}

a {
	color: black;
	text-decoration: none;
}
</style>
<script type="text/javascript">

function validate(){
	var USERNAME=document.form.username.value;
	var PASSWORD=document.form.password.value;
	
	
	if(USERNAME==null || USERNAME==""){
		alert("username can't be blank");
		return false;
	}
	else (PASSWORD==null || PASSWORD==""){
		alert("password can't be blank");
		return false;
	}
}
</script>
</head>
<body>

	<div class="container">
		<h1>Welcome to the Voting Area</h1>.
		<form method="post" action="Vlogin">

			Username: <input type="text" name="username" ><br><br> 
			Password: <input type="password" name="password" ><br>
			<br>
			<br>
			<br>
			<button type="submit"  value="Login">Login</button>	
			<button type="button" onclick="RegisterButton()">Registraion </a>
			</button>
		</form>
	
		<br> <a href="AdminLogin.jsp" target="blank"> <b>ADMIN LOGIN</b></a>
	</div>

	<script type="text/javascript">
		function RegisterButton() {
			window.location.href = "Registration.jsp"
		}
	</script>
	
</body>
</html>