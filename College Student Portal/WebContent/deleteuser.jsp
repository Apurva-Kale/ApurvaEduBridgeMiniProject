<%@page import="database.connection.com.DBConnection"%>
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
DBConnection.delete(u);
response.sendRedirect("Viewusers.jsp");
%>
