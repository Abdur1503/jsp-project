<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body background="bank.jpg">
<fieldset>
<legend><font size="8">Enter your detail</font></legend>
	<font size=5>
	<form action="signup_handler.jsp" method="post">
               
		<label for="1">Name:</label>
		<br>
		<input type="text" id="1" name="n_ame" required>
		<br>
	
		<label for="2">Email:</label>
		<br>
		<input type="email" id="2" name="e_mail" required>
	
		<br>
		<label for="3">Password:</label>
		<br>
		<input type="password" id="3" name="p_assword" required>
	
		<br>
		<label for="4">Mobile:</label>
		<br>
		<input type="number" id="4" name="m_obile" required min="0" max="9999999999">
	    <br>
	    
	    
		<label for="5">Amount:</label>
		<br>
		<input type="number" id="5" name="a_mount" required min="0" max="9999999999">
	    <br>
	    <br>
	    <input size=7 type="submit" align="middle" name="s_ubmit" value="Submit">
	</form>
		
		</font>
		
		
	</fieldset>
</center>
</body>
</html>