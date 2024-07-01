<%-- 
    Document   : studentaddform
    Created on : Jul 1, 2024, 11:03:19 AM
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
        <h1>Student Form</h1>
        
        <<form action="savestudent.jsp" method="post">
            
            
            Name:<input type="text" name="name"><br>
            Address:<input type="text" name="address"><br>
            Email:<input type="email" name="email"><br>
            Cell:<input type="text" name="cell"><br>
            
            <input type="submit" value="save">
        </form>
    </body>
</html>
