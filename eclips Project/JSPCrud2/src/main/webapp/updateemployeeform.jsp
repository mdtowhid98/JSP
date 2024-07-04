
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>


<%
    String id=request.getParameter("id");    
    Employee s=EmployeeDao.getById(Integer.parseInt(id));

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Update Form</h1>
        
        <form action="updateemployee.jsp" method="post">
            <input type="hidden" name="id" value="<%=s.getId()%>">
            
            Name: <input type="text" name="name" value="<%=s.getName()%>"> <br>
            
            Cell No: <input type="text" name="cell" value="<%=s.getCell()%>"> <br>
            
            <input type="submit" value="Save">
            
        </form>
        
    </body>
</html>
