<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate List</title>
</head>
<style>
body{
padding: 0;
	margin: 0;
	box-sizing: border-box;	
	background-image:url('votingimage1.jpg');
	background-size:cover;
	background-position:center center;
	background-repeat:no-repeat;

}
        .table1{
            border: 1px solid black;
            width:100%;            
        }
        h1{
        text-align: center;
        color:green;
        }
        tr{
        background-color:black;
        }
        th{
        color:white;
        }
        td{
        color: white;}
        
</style>
<body>
<h1> CANDIDATE ARE:</h1>
<table class="table1">
<tr>
<th>Candidate Name</th>
<th>Phone No</th>
<th>Email Id</th>
<th>Party Name</th>
</tr>
 <%
 try{
 Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voters","root","root");
 Statement stm=con.createStatement();
 ResultSet rs=stm.executeQuery("select * from candidate");
 while(rs.next()){
	 
            %>
<tr>
            <td><%=rs.getString("Name")%></td>
                <td><%=rs.getString("PhoneNo")%></td>
                <td><%=rs.getString("EmailId")%></td>   
                <td><%=rs.getString("PartyName")%></td>
          
        </tr>
        <%
        }
 }
 catch(Exception e){
	 e.printStackTrace();
 }
 %>
</table>
</body>
</html>