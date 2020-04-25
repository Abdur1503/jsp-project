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
<legend><font size="8">Enter your detail</font></legend>
	<form action="login_handler.jsp" method="post">

		
	<font size=5>
	    <label for="1">Account no:</label>
		<br>
		<input type="number" id="1" name="A_ccount" required>
	    <br>
		<label for="2">email:</label>
		<br>
		<input type="email" id="2" name="e_mail" required>
	
		<br>
		<label for="3">Password:</label>
		<br>
		<input type="password" id="3" name="p_assword" required>
	
		
	    <input  type="submit" align="middle" name="s_ubmit" value="Login">
	</form>
	</font>
</center>
</fieldset>
</body>
</html>