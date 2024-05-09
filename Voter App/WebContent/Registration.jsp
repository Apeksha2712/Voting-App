
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style type="text/css">
body{
margin:0;
padding:0;
box-sizing:botder-box;
display:flex;
justify-content:center;
background-image:url('votingimage1.jpg');
	background-size:cover;
	background-position:center center;
	background-repeat:no-repeat;

}
.container{
width:60%;
max-width:400px;
margin-top:130px;
padding:20px;
background-color:#AEFD6C;
box-shadow:0 0 10px rgba(0, 0 ,1, 0.5);
border-radius:10px;
text-align:center;
}
</style>

<script type="text/javascript">
function validate(){
	var USERNAME=document.form.username.value;
	var PASSWORD=document.form.password.value;
	var EMAIL=document.form.email.value;
	var PHONE=document.form.email.value;
	
	if(USERNAME==null || USERNAME==""){
		alert("username can't be blank");
		return false;
	}
	else if(PASSWORD==null || PASSWORD==""){
		alert("password can't be blank");
		return false;
	}
	else if(EMAIL==null || EMAIL==""){
		alert("email id can't be blank");
		return false;
	}
	else if(PHONE==null || PHONE==""){
		alert("phone no can't be blank");
		return false;
	}
}

function LoginButton(){
	window.location.href="index.jsp"
}
</script>
</head>
<body>

<div class=container>
<%
    // Check if registration was successful
    Boolean registrationSuccess = (Boolean) request.getAttribute("registrationSuccess");
    if (registrationSuccess != null && registrationSuccess) {
        out.print("<h3 style='color:green; text-align:center;'> User Registered Successfully.Please Login</h3>");
    }
%>
<h1>Registration Form</h1>
<form  method="post"  action=" register" onsubmit="return validate()">
Username: <input type="text"  name="username"><br><br>
Password: <input type="password"  name="password"><br><br>
Email Id: <input type="email"  name="email"><br><br>
Phone No: <input type="tel" name="phone">
<br><br><br>
<button type="button" onclick="LoginButton()" >Login</button>
<button type="submit"  value="Register">Registration</button>

</form>
</div>
</body>
</html>