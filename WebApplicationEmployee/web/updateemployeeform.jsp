<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>

<%
    String id=request.getParameter("id");    
    Employee e=EmployeeDao.getById(Integer.parseInt(id));

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Employee</h1>
        
        <form action="updateemployee.jsp" method="post">
            
              <input type="hidden" name="id" value="<%=e.getId()%>">
            
            Name:<input type="text" name="name" value="<%=e.getName()%>"><br><br>   
            Email:<input type="email" name="email" value="<%=e.getEmail()%>"><br><br>   
            Cell:<input type="text" name="cell" value="<%=e.getCell()%>"><br><br>  
            
             <input type="submit" value="Save">
            
        </form>
    </body>
</html>