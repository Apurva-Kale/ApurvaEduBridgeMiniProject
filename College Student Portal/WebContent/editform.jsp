<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit form</title>
</head>
<Body background="https://images.unsplash.com/photo-1512847930783-39fdc971594b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80">
<%@page import="database.connection.com.DBConnection,com.javatpoint.bean.User"%>

<%
String userid=request.getParameter("userid");
User u=DBConnection.getRecordByuserid(userid);
%>
<div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
<h1>Edit Form</h1>
<form action="editusers.jsp" method="post">
<table>
<tr><td>userid:</td><td><input type="text" name="userid" value="<%=u.getuserid() %>"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
<tr><td>fname:</td><td><input type="text" name="fname" value="<%= u.getfname()%>"/></td></tr>
<tr><td>lname:</td><td><input type="text" name="lname" value="<%= u.getlname()%>"/></td></tr>
<tr><td>email:</td><td><input type="text" name="email" value="<%= u.getemail()%>"/></td></tr>

<tr><td colspan="4"><input type="submit" value="Edit Details" class="btn btn-success"/></td></tr>
</table>
</form></div></div></div>
</body>
</html>