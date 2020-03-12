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
                height: 45px;
                width: 100%;
                font-size: 30px;
                font-family: inherit;
                border-radius: 2px;
                font-weight: bold;
                text-align: center;
            }
            .header
            {
                width: 30%;
                height: 300px;
                margin:0px auto;
                margin-top:70px;
            }
            .lbl
            {
                width: 250px;
                height: 50px;
                font-family: inherit;
                font-size: 20px;
            }
            #button
            {
                width: 100px;
                height: 35px;
                font-size: 18px;
                margin-left: 15px;
            }
        </style>
    </head>
    <body style="background-color: azure">
     <form action="UpdateSuccess.jsp" method="post" >
      <div class="top">Profile Updation</div>
     
      <div class="header">
      <table border:"1px" cellspacing="5px" cellpadding="5px">
      <tr><td class="lbl">Email ID</td>
          <td><input class="lbl" type="text" placeholder="Email-id" name="email" required></td></tr>
      <tr><td class="lbl">Skills</td>
          <td><input class="lbl" type="text" placeholder="Enter your skills" name="skills" required></td></tr>
      <tr><td class="lbl">Years Of Experience</td>
          <td><input class="lbl" type="number" placeholder="1-15" name="expr" required></td></tr>
      <tr colspan="2"></tr>
      <tr><td></td>
          <td><button id="button" type="submit" >Update</button></td></tr>
      
      </table>
     </form>
    </body>
</html>
