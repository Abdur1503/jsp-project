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
 response.setHeader("Cache_control", "no-cache,no-store,must-revalidate");
 if(session.getAttribute("accno")==null)
	response.sendRedirect("login.jsp");
%>
   <% 
   
    int id=Integer.parseInt(request.getParameter("A_ccount"));
   String em=request.getParameter("e_mail");
	String ps=request.getParameter("p_assword");
	session.setAttribute("accno", id);
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webapplication";
	String user="root";
	String password="abdur1234";
	Connection cref=DriverManager.getConnection(url, user, password);
	Statement sref=cref.createStatement();
	session.setAttribute("co", cref);
	ResultSet rs=sref.executeQuery("select* from webapplication.userdetail");
	int z=0;
	while(rs.next()==true)
	  {
		  int temp_id=rs.getInt(1);
		  String temp_em=rs.getString(3);
		  String temp_ps=rs.getString(4);
		  if(id==temp_id &&(em.equals(temp_em)) && (ps.equals(temp_ps)))
		  { 
			  z=1;%>
			 <b>Login succesful</b><br><a href="welcome.jsp?i=<%=id%>&em=<%=em%>">click here to begin</a>
		    <%  break;
		  }
	  }
	if(z==0)
	{
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>