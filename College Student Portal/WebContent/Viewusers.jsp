<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Students</title>
</head>
<body>
<%@page import="database.connection.com.DBConnection,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Students List</h1>
<p style="text-align:center;">List</p>
<%
List<User> list=DBConnection.getAllRecords();
request.setAttribute("list",list);
%>
<div class="container">
<table class="table table-hover">
<thead>
<tr><th>userid</th><th>Password</th><th>fname</th><th>lname</th><th>email</th><th>Edit</th><th>Delete</th></tr></thead>
<tbody>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getuserid()}</td><td>${u.getPassword()}</td><td>${u.getfname()}</td><td>${u.getlname()}</td><td>${u.getemail()}</td><td><a href="editform.jsp?userid=${u.getuserid()}">Edit</a></td><td><a href="deleteuser.jsp?userid=${u.getuserid()}">Delete</a></td></tr>
</c:forEach></tbody>
</table></div>
<br/><a href="Reg.html"class="btn btn-primary">New Registration</a>




</body>
</html>