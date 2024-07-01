<%-- 
    Document   : employeeaddform
    Created on : Jul 1, 2024, 3:27:31 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Employee</h1>
        
        <form action="saveemployee.jsp" method="post">
            
            Name:<input type="text" name="name"><br><br>   
            Email:<input type="email" name="email"><br><br>   
            Cell:<input type="text" name="cell"><br><br>  
            
             <input type="submit" value="Save">
            
        </form>
    </body>
</html>
