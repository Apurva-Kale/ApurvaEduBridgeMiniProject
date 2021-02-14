<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login Jsp</title>
</head>
<Body background="https://images.unsplash.com/photo-1600577916048-804c9191e36c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80">
<%@ page import="java.sql.*" %>

<% 
String userid=request.getParameter("usr");
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/edubridge","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from users where userid=userid");
if(rs.next()){
	if(rs.getString(2).equals(pwd)){
		out.println("welcome to your Student portal" +  userid);
	}else
	{
		out.println("Invalid password try again");
	}
}
else


%>
<br>
<br>
<a href="index.jsp"class="btn btn-primary">Logout</a>
<%--- <button href="index.html" >Logout</button>
 <button onclick="index.html">
      Click Here
    </button>
    
     
      <input type="button" onclick="index.html" value="w3docs" />--%>
</body>
</html>