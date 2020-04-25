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
<font colour=white size=8>
<% 
	 int id=Integer.parseInt(request.getParameter("A_ccount"));
   String em=request.getParameter("e_mail");
	String ps=request.getParameter("p_assword");
	session.setAttribute("accno", id);
      if(id==0 && em.equals("abdur.form123@gmail.com") && ps.equals("8354070321"))
    	 response.sendRedirect("welcome_admin.jsp");
      else
    	  response.sendRedirect("login_admin.jsp");
	
	%>
	</font>
	</center>
</body>
</html>