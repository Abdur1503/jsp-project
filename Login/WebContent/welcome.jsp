<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="bank.jpg">
<center>
<fieldset>
<legend><font size="8">Your Bank</font></legend>
<% 
 response.setHeader("Cache_control", "no-cache,no-store,must-revalidate");
 if(session.getAttribute("accno")==null)
	response.sendRedirect("login.jsp");
%>
<%
int id=Integer.parseInt(request.getParameter("i"));
String em=request.getParameter("em");
%>
<form action="show.jsp?i=<%=id%>&em=<%=em%>" method="post">
<input  type="submit" align="middle" name="l_up" value="Show account details">
</form>
<br>

<form action="withdraw.jsp?i=<%=id%>" method="post">
<input  type="submit" align="middle" name="l_up" value="Withdraw">
</form>
<br>

<form action="deposite.jsp?i=<%=id%>" method="post">
<input  type="submit" align="middle" name="s_up" value="Deposite">
</form>
<br>

<form action="logout.jsp" method="post">
<input  type="submit" align="middle" name="s_up" value="Log out">
</form>
<br>
</fieldset>

</center>
</body>
</html>