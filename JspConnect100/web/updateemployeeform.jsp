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

    Name: <input type="text" name="name" value="<%=e.getName()%>"><br><br>
    Email: <input type="email" name="email" value="<%=e.getEmail()%>"><br><br>
    Cell: <input type="text" name="cell" value="<%=e.getCell()%>"><br><br>

    Gender: 
    <input type="radio" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %>> Male
    <input type="radio" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %>> Female
    <input type="radio" name="gender" value="Other" <%= "Other".equals(e.getGender()) ? "checked" : "" %>> Other<br><br>

    Subject: 
    <select name="subject" required>
        <option value="Bangla" <%= "Bangla".equals(e.getSubject()) ? "selected" : "" %>>Bangla</option>
        <option value="English" <%= "English".equals(e.getSubject()) ? "selected" : "" %>>English</option>
        <option value="Math" <%= "Math".equals(e.getSubject()) ? "selected" : "" %>>Math</option>
    </select><br><br>

    <input type="submit" value="Save">
</form>

    </body>
</html>