
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
      <body>
         <%@ page import="java.sql.*" %>
         <%@ page import="javax.sql.*" %>
         
        <%
            String emp_name= request.getParameter("hr");
            String pswd= request.getParameter("pswd");
            
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Admin@123;databasename=emp_log");
           Statement st = con.createStatement();
           
           ResultSet rs= st.executeQuery("select * from etbl where fname='"+emp_name+"' ");
           
            if(rs.next())
            { 
            if(rs.getString(4).equals(pswd))
                {
                    out.println("welcome");%>
                    <br>
                    <%
                        out.println("Name:"+rs.getString(1)+rs.getString(2));%>
                        <br>
                        
                            <%
                                out.println("E-Mail:"+rs.getString(3));%>
                                <br>
              <% }                 
                else
                {
                    out.println("invalid password");
                }
            }
         %>
         <h1>Search Employee</h1>
         
        <form action="EmpDetails.jsp" >
            <table>
                <tr>Search by Name  <input type="text" placeholder="Emp Name" name="emp"</tr>
                <td><input type="submit" value="search"</td>
            </table>
                 
         </form>
     </body>
</html>
