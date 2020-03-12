
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOYEE LOGIN</title>
        <style>
            .top
            {
                background-color: darkcyan;
                height: 40px;
                width: 100%;
                font-size: 30px;
                font-family: inherit;
                border-radius: 5px;
                font-weight: bolder;
            }
            .top a
            {
                color: black;
                font-size: 28px;
                float: right;
                font-family: inherit;
                margin-right: 15px;
                text-decoration: none;
            }
            .top2
            {
                height: 200px;
                font-family: inherit;
                font-size: 30px;
                color: #cc0000;
                margin-left: 20px;
                font-weight: 700;
            }
        </style>
        
    </head>
    <body>
         <%@ page import="java.sql.*" %>
         <%@ page import="javax.sql.*" %>
         
        <%
           String email= request.getParameter("email");
           String pswd= request.getParameter("pswd");
            
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
           Statement st = con.createStatement();
           
           ResultSet rs= st.executeQuery("select * from emp_tbl where email='"+email+"' ");
           
            if(rs.next())
            { 
             if(rs.getString(5).equals(pswd))
              { %>
            
              <div class="top">
              <span style="color: white;"><% out.println("Welcome"+" "+rs.getString(1)+" "+rs.getString(2));%></span>
              <a href="home.html">Logout</a>
              <a href="update.jsp">Update</a>
              </div>
              
              <div class="top2">
                  <span><br><% out.println("E-mail ID"+" : "+ rs.getString(4)); %> </span><br>
                  <% out.println("Skills"+" : "+ rs.getString(13)); %><br>
                  <% out.println("Years of Experience"+" : "+ rs.getString(12)); %>
                  
              </div>
              
              <% }                 
               else
                {  
                  out.println("invalid password");
                }
              }
             %>
 
     </body>
</html>
