<%@page import="database.connection.com.DBConnection"%>
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=DBConnection.update(u);
response.sendRedirect("Viewusers.jsp");
%>
