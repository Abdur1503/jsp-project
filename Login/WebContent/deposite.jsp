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
	 int id=Integer.parseInt(request.getParameter("i"));
%>
<legend><font size="8">Enter your detail</font></legend>
	<form action="deposite_handler.jsp?i=<%=id%>" method="post">

		
	<font size=5>
	    <label for="1">Deposite Amount:</label>
		<br>
		<input type="number" id="1" name="A_mnt" required>
	    <br>
	    <input  type="submit" align="middle" name="s_ubmit" value="Deposite">
	    </form>
	</font>
</fieldset>
</center>
</body>
</html>