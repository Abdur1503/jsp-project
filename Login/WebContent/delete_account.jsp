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
<body background="bank.jpg" width="600" height="300">
<center>
<fieldset>
<legend><font size="8">Your Bank</font></legend>
<font size=5>
<% 

response.setHeader("Cache_control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("accno")==null)
	response.sendRedirect("login_admin.jsp");

    Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/webapplication";
	String user="root";
	String password1="abdur1234";
	Connection cref=DriverManager.getConnection(url, user, password1);
	Statement sref=cref.createStatement();
	Statement sref2=cref.createStatement();
	ResultSet rs3=sref.executeQuery("select* from webapplication.userdetail");
	ResultSet rs4=sref2.executeQuery("select* from webapplication.userdetail");  
       
	  int i=0;
      while(rs3.next())
      {
   	   i++;
      }
      int z=0;
     int id[]=new int[i];
     String name[]=new String[i];
     String email[]=new String[i];
     String password[]=new String[i];
     String mobile[]=new String[i];
     float amount[]=new float[i];
     
     while(rs4.next())
     {
   	  id[z]=rs4.getInt(1);
   	  name[z]=rs4.getString(2);
   	  email[z]=rs4.getString(3);
   	  password[z]=rs4.getString(4);
   	  mobile[z]=rs4.getString(5);
   	  amount[z]=rs4.getFloat(6);
   	  z++;
     }
     
     out.println("<center><h1 style=color:green><u>User details</u></h1>");
    %> 
    <table style="width:100%" border="1" text-align: center >
        <tr>
            <th style=color:black><b>Account no</b></th>
            <th style=color:black><b>Name</b></th>
            <th style=color:black><b>Email</b></th>
            <th style=color:black><b>Password</b></th>
            <th style=color:black><b>Mobile</b></th>
            <th style=color:black><b>Amount</b></th>
            <th style=color:black><b>Delete</b></th>
        </tr>
     
        <%for(int x=0; x<id.length; x++)
        {
        %>   
         <tr>
           <td style=color:white><%=id[x]%></td>
           <td style=color:white><%=name[x]%></td>
           <td style=color:white><%=email[x]%></td>
	       <td style=color:white><%=password[x]%></td>
	       <td style=color:white><%=mobile[x]%></td>
           <td style=color:white><%=amount[x]%></td>
           <td><a href="delete_account_handler.jsp?i=<%=id[x]%>">Delete</a></td>
         
         </tr>
        <%
        }
 		cref.close();
        %>
      
     </table>
</font>
</fieldset>

</center>
</body>
</html>