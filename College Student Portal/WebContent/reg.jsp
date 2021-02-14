<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<Body background="https://uploads-ssl.webflow.com/5ef0df6b9272f7410180a013/5ef341840cd1d2f8183c4e2f_thank-you-message-after-form-submission-MightyForms.png">
<%@ page import="java.sql.*" %>


<%
String user=request.getParameter("userid");

String pwd=request.getParameter("pwd");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
Statement stmt = con.createStatement();
ResultSet rs;
int i=stmt.executeUpdate("insert into  users values ('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')");
if(i>0){out.println("Registered Account Successfully");}}
catch(SQLException e){out.println("UserId is not Available");}
//out.println("Registered Account Successfully");
%>
<br>
<br>
<a href="Login.html"class="btn btn-primary">Login</a>

</body>
</html>