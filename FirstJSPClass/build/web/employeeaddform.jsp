<%-- 
    Document   : employeeaddform
    Created on : Jul 1, 2024, 12:09:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee Form</h1>
        
        <form action="saveemployee.jsp" method="post">
            
            
            Name:<input type="text" name="name"><br>
            Email:<input type="email" name="email"><br>
            
            <<input type="submit" value="Save">
        </form>
    </body>
</html>
