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
<body background="bank.jpg" width="600" height="300">
<center>
<fieldset>
<legend><font size="16">Your Bank</font></legend>
<% 
	 response.setHeader("Cache_control", "no-cache,no-store,must-revalidate");
	 if(session.getAttribute("accno")==null)
		response.sendRedirect("login.jsp");
%>
<%
   int id=Integer.parseInt(request.getParameter("i"));
	String em=request.getParameter("em");
	 
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webapplication";
		String user="root";
		String password="abdur1234";
		Connection cref=DriverManager.getConnection(url, user, password);
		Statement sref=cref.createStatement();
		ResultSet rs=sref.executeQuery("select* from webapplication.userdetail");
		
		while(rs.next())
		{
			if(id==rs.getInt(1))
			{
			   	  
			   	  String name=rs.getString(2);
			   	  String pass=rs.getString(4);
			   	  String mobile=rs.getString(5);
			   	 float amount=rs.getFloat(6);
			   	 session.setAttribute("amnt", amount);
				%>
				<b>Account no : <%=id%></b><br>
				<b>Name : <%=name%></b><br>
				<b>Email : <%=em%></b><br>
				<b>Password : <%=pass%></b><br>
				<b>Mobile no : <%=mobile%></b><br>
				<b>Balance : <%=amount%></b><br>
			   <%
			}
			
		}
		



%>
</fieldset>
</center>
</body>
</html>