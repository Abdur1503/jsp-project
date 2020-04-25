<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("i");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/webapplication";
String user="root";
String password1="abdur1234";
Connection cref=DriverManager.getConnection(url, user, password1);
Statement sref=cref.createStatement();
String sql="Delete from userdetail where id="+id;

sref.executeUpdate(sql);
%>
 <h1 style=color:Red>Account deleted</h1>
     <br>
      <a href="delete_Account.jsp">Delete more Account</a>
      <br>
      <a href="welcome_admin.jsp">Go back to home page</a>
</body>
</html>