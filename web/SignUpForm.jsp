<!DOCTYPE html>
<html>
    <head>
        <title>Registration Successful</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
         a
         {
             text-decoration: none;
             color: black;
         }
        </style>
    </head>
    
    <body style="background-color: azure"> 
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
       
    <% 
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String dob=request.getParameter("dob");
          String email=request.getParameter("email");
          String pswrd=request.getParameter("pswd");
          String phno=request.getParameter("phno");
          String addrs=request.getParameter("address");
          String sslc=request.getParameter("marks10");
          String hsc=request.getParameter("marks12");
          String branch=request.getParameter("branch");
          String col=request.getParameter("college name");
          String exp=request.getParameter("exp");
          String skills=request.getParameter("skills");     
          
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
          Statement st = con.createStatement();
          String str="insert into emp_tbl values('"+fname+"','"+lname+"','"+dob+"','"+email+"','"+pswrd+"','"+phno+"','"+addrs+"','"+sslc+"','"+hsc+"','"+branch+"','"+col+"','"+exp+"','"+skills+"')";
          
          st.execute(str);
         
        %>
     
       <h1 style="font-size: 30px; font-family: cursive"><% out.println("Thankyou for Registering"+" "+fname+" "+lname);%></h1>
       <br>
       <a href="Login.html" target="frame1"><span style="font-family: inherit; font-size: 30px">Login</span></a>
       <br><br>
       <a href="home.html" target="frame1"><span style="font-family: inherit; font-size: 30px">Home</span></a> 
</body>
</html>
