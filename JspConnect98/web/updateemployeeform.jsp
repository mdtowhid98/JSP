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
        <h1>Update Teacher</h1>

      <form action="updateemployee.jsp" method="post">
    <input type="hidden" name="id" value="<%= e.getId() %>">

    Name: <input type="text" name="name" value="<%= e.getName() %>"><br><br>

    Gender: 
    <input type="radio" name="gender" value="Male" <%= "Male".equals(e.getGender()) ? "checked" : "" %>> Male
    <input type="radio" name="gender" value="Female" <%= "Female".equals(e.getGender()) ? "checked" : "" %>> Female
    <input type="radio" name="gender" value="Other" <%= "Other".equals(e.getGender()) ? "checked" : "" %>> Other<br><br>

    Department: 
    <select name="department" required>
        <option value="Java" <%= "Java".equals(e.getDepartment()) ? "selected" : "" %>>Java</option>
        <option value="Python" <%= "Python".equals(e.getDepartment()) ? "selected" : "" %>>Python</option>
        <option value="C#" <%= "Math".equals(e.getDepartment()) ? "selected" : "" %>>C#</option>
    </select><br><br>

    <input type="submit" value="Save">
</form>


    </body>
</html>