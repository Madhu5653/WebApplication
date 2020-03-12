<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HR login</title>
        <link type="text/css" rel="stylesheet" href="hr.css" >
   
    </head> 
    <body>
       <%@ page import="java.sql.*" %>
       <%@ page import="javax.sql.*" %>
       
       <% 
          String hr= request.getParameter("hr-id");
          String pswd= request.getParameter("pswd");
          
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
          Statement st = con.createStatement();
          
          ResultSet rs=st.executeQuery("select * from hr_tab where hr_id='"+hr+"' ");
          
          if(rs.next())
          {
           if(rs.getString(4).equals(pswd))
           { %>
           
            <div class="top">
              <span><% out.println("Hi"+" "+rs.getString(2));%></span>
              <a href="home.html">Logout</a>
            </div>
              
            <div class="top2">
                <span><br><% out.println("HR-ID"+" : "+rs.getString(1)); %></span><br>
                <% out.println("E-mail"+" : "+rs.getString(3)); %>
            </div>
               
           <% }
            else
            {
              out.println("Invalid Password");
            }
           } %>
           
          <form action="empSearch.jsp" method="post">
           <br><br>
           <table class="top1" border:"2px" cellspacing="5px" cellpadding="5px">
             <tr><td class="lbl">Search Employee By Skills:</td>
              <td><input class="lbl1" type="text" placeholder="Skills" name="skills" required></td>
             </tr>
             <tr colspan="2" height="10px"></tr>
             <tr><td></td>
                 <td><button class="lbl2" type="search">Search</button></td>
             </tr>
           </table>
          </form> 
           
    </body>
</html>
