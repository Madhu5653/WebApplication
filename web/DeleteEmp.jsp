<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
        <style>
            .top
            {
               background-color: darkcyan;
               height: 40px;
               width: 100%;
            }
            .top a
            {
                 color: white;
                 font-size: 28px;
                 float: right;
                 font-family: inherit;
                 margin-right: 20px;
                 text-decoration: none; 
            }
            .top a:hover
            {
                color: black;
                font-size: 30px;
            }
        </style>
    </head>
    <body>
       <%@ page import="java.sql.*" %>
       <%@ page import="javax.sql.*" %>
       
       <div class="top">
        <a href="home.html">Logout</a>
       </div>
       
       <% 
         String email = request.getParameter("email");
           
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
         Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
         Statement st = con.createStatement();
         
         String query = "delete from emp_tbl where Email='"+email+"' ";
         st.execute(query);
       
       %>
       
       <div style="width: 100%; height: 30px;"><h1>Deleted Successfully..</h1></div>
    </body>
</html>
