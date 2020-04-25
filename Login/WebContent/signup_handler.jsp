

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
<body background="bank.jpg">
<center>
<font colour=white size=8>
  <%
	
  String nm=request.getParameter("n_ame");
	String em=request.getParameter("e_mail");
	String ps=request.getParameter("p_assword");
	String mb=request.getParameter("m_obile");
	float amnt=Float.parseFloat(request.getParameter("a_mount"));
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/webapplication";
		String user="root";
		String password="abdur1234";
		Connection cref=DriverManager.getConnection(url, user, password);
		Statement sref=cref.createStatement();
		
		
		
		
		sref.executeUpdate("insert into userdetail(name,email,password,mobile,amount) values('"+nm+"','"+em+"','"+ps+"','"+mb+"','"+amnt+"')");
		ResultSet rs=sref.executeQuery("select* from webapplication.userdetail");
		int z=0;
		while(rs.next()==true)
		  {
			  
			  String temp_em=rs.getString(3);
			  String temp_ps=rs.getString(4);
			  if((em.equals(temp_em)) && (ps.equals(temp_ps)))
			  { 
				  	int id=rs.getInt(1);
				  	
				     out.println("Your account no = "+id);
						cref.close();
					out.println("<br>Succesfully Registered</font><br>");
				      out.println("<a href='login.jsp'><font colour=white size=8>click here to login</font></a>");
					
				 break;
			  }
		  }

		
   
    %>
</center>
</body>
</html>