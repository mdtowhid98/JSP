<%-- 
    Document   : teacheraddform
    Created on : Jul 3, 2024, 12:38:46 PM
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
        <h1>Add Teacher</h1>
        
        <<form action="saveteacher.jsp" method="post">
            <table>
                Name:<input type="text" name="name"><br>
                Address:<input type="text" name="address"><br>
                City:<input type="text" name="city"><br>
                
                <input type="submit" value="Save">
               
            </table>
        </form>
    </body>
</html>
