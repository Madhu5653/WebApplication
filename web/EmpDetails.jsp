
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ page import="java.sql.*" %>
         <%@ page import="javax.sql.*" %>
         
        <%
            String emp_name= request.getParameter("emp");
            
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
           Statement st = con.createStatement();
           
           ResultSet rs= st.executeQuery("select * from etbl where fname='"+emp_name+"' ");
           
            if(rs.next())
            { 
            if(rs.getString(1).equals(emp_name))
                {
                    out.println("Name:"+rs.getString(1)+rs.getString(2));%>
                        <br>
                          <%
                                out.println("E-Mail:"+rs.getString(3)+"<br>");%>
                                <br>
                           <% 
                                out.println("Address:"+rs.getString(5));%>
                                <br>
                         <% 
                              out.println("Date of Birth:"+rs.getString(6));%>                                 
              <% }                 
                else
                {
                    out.println("invalid password");
                }
            }
         %>
    </body>
</html>
