
<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
    String id=request.getParameter("id");    
    Student s=StudentDao.getById(Integer.parseInt(id));

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Student</h1>
        
        <form action="updatestudent.jsp" method="post">
            
              <input type="hidden" name="id" value="<%=s.getId()%>">
            
            Name:<input type="text" name="name" value="<%=s.getName()%>"><br><br>   
            Email:<input type="email" name="email" value="<%=s.getEmail()%>"><br><br>   
             
            
             <input type="submit" value="Save">
            
        </form>
    </body>
</html>
