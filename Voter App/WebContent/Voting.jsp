<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voting Page</title>
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
h1 {
     color: red;
     text-align: center;
   }   
                
</style>

<body>
<div class="container">
<h1>Welcome to the voting Area</h1>
<form  id="form" action="VotingForm" method="post">
<p><input type="radio" name="candidate" value="BJP">  <input type="text" Value="BJP"></p>
<p><input type="radio" name="candidate" value="AAP">  <input type="text" Value="AAP"></p>
<p><input type="radio" name="candidate" value="CONGRESS">  <input type="text" Value="CONGRESS"></p>
<p><input type="radio" name="candidate" value="SHIV SENA">  <input type="text" Value="SHIV SENA"></p>

<input type="submit" value="Submit" onclick="this.value='submitting!';this.disabled='disabled';this.form.submit();demo();">

<script type="text/javascript">
function demo(){
	alert ("you have successfully placed your vote once!");
}
</script>
</form>
  <%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");


%>
<script>

history.forward();

</script>
</div>

</body>
</html>