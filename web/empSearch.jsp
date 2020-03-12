<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Skills Search</title>
        <link rel="stylesheet" type="text/css" href="delete.css" >
    </head>
    <body>
       <%@ page import="java.sql.*" %>
       <%@ page import="javax.sql.*" %>
       
       <div class="top">
        <a href="home.html">Logout</a>
       </div>
       
        <%
          String skills = request.getParameter("skills");
         
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
          Statement st = con.createStatement();
          
          ResultSet rs=st.executeQuery("select * from emp_tbl where skills='"+skills+"' ");
          
         while(rs.next())
         {
           if(rs.getString(13).equals(skills))
           {
           %>
          
          <div class="top1">
           <table border:"2px" cellspacing="3px" cellpadding="3px">
            <tr><td class="lbl">Name</td>
                <td class="lbl1"><% out.println(rs.getString(1)+" "+rs.getString(2)); %></td>
            </tr>
            <tr><td class="lbl">E-mail</td>
                <td class="lbl1"><% out.println(rs.getString(4)); %></td>
            </tr>
            <tr><td class="lbl">Skills</td>
                <td class="lbl1"><% out.println(rs.getString(13)); %></td>
            </tr>
            <tr><td class="lbl">Experience</td>
                <td class="lbl1"><% out.println(rs.getString(12)); %></td>
            </tr>
           </table>
          </div>   
            
       <%  }
           else
           {
             out.println("Invalid Skills");
           }
          }
        %>  
        
        <form action="DeleteEmp.jsp" method="post">
        <div class="top2">
        <table style="float: none;" border:"2px" cellspacing="3px" cellpadding="3px">
            <tr><td class="col">To Delete a Employee</td>
                <td><input class="col2" type="email" placeholder="Enter employee email-id" name="email"></td>
            </tr>
            <tr colspan="2" height="10px"></tr>
            <tr><td></td>
                <td><input class="col3" type="submit" value="Delete"></td>
            </tr>
        </table>
        </div>
        </form>
    </body>
</html>
