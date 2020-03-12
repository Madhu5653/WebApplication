<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Updation</title>
        <style>
            .top
            {
                background-color: darkcyan;
                height: 40px;
                width: 100%;
                font-size: 30px;
                font-family: inherit;
                border-radius: 4px;
                font-weight: bolder;
            }
            .top a
            {
                color: white;
                font-size: 28px;
                float: right;
                font-family: inherit;
                margin-right: 15px;
                text-decoration: none;
            }
            .top a:hover
            {
                color: black;
            }
        </style>
    </head>
    <body style="background-color: azure">
       <%@ page import="java.sql.*" %>
       <%@ page import="javax.sql.*" %>
         
        <%
           String email= request.getParameter("email");
           String exp= request.getParameter("expr");
           String skills= request.getParameter("skills");
            
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
           Statement st = con.createStatement();
           String str= "update emp_tbl set experience='"+exp+"',skills='"+skills+"' where Email='"+email+"' ";
           
           st.execute(str);
         %>
         
         <div class="top">
         <a href="Login.html">Logout</a>
         </div>
         <h1><% out.println("Updated Successfully.."); %> </h1>
     
    </body>
</html>
