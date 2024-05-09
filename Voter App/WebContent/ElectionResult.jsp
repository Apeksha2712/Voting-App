<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Election Result</title>
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
th{
Color:#00FFF9;
font-size: 23;
}
th, td{
 width:180px;
text-align:center;
border:1px solid black;
padding:30px;
}

</style>
<body>

<!-- BJP -->
<table class="table1">
<tr>
<th><a href="">Bhartiya Janata Party</a></th>
</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voters","root","root");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery("select count(*) from votes where PartyName='BJP'");
	while(rs.next())
	{
%>
<tr>     
  <td> <%=rs.getString(1)%> </td>
</tr>
<%
    }
      } catch(Exception e)  {
             e.printStackTrace();
         }
%>
</table>

<!-- AAP -->

<table class="table2">
<tr>
<th><a href=""> Aam Admi Party</a></th>
</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voters","root","root");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery("select count(*) from votes where PartyName='AAP'");
	while(rs.next())
	{
%>
<tr>     
  <td> <%=rs.getString(1)%> </td>
</tr>
<%
    }
      } catch(Exception e)  {
             e.printStackTrace();
         }
%>
</table>

<!-- SHIV SENA -->

<table class="table3">
<tr>
<th> <a href="">SHIV SENA</a></th>
</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voters","root","root");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery("select count(*) from votes where PartyName='SHIV SENA'");
	while(rs.next())
	{
%>
<tr>     
  <td> <%=rs.getString(1)%> </td>
</tr>
<%
    }
      } catch(Exception e)  {
             e.printStackTrace();
         }
%>
</table>

<!-- CONGRESS -->

<table class="table4">
<tr>
<th><a href=""> CONGRESS</a></th>
</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voters","root","root");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery("select count(*) from votes where PartyName='CONGRESS'");
	while(rs.next())
	{
%>
<tr>     
  <td> <%=rs.getString(1)%> </td>
</tr>
<%
    }
      } catch(Exception e)  {
             e.printStackTrace();
         }
%>
</table>

</body>
</html>