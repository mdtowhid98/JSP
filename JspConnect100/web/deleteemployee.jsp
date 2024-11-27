<jsp:useBean class="model.Employee" id="e"/>
<%@page  import="dao.EmployeeDao" %>
<jsp:setProperty name="e" property="*" />


<%
    EmployeeDao.deleteEmployee(e);
    response.sendRedirect("viewallemployee.jsp");

%>
