

<jsp:useBean class="model.Employee" id="e"/>
<%@page import="dao.EmployeeDao" %>
<jsp:setProperty property="*" name="e"/>

<% 

	int i=EmployeeDao.saveEmployee(e);

	if(i>0){
    
    response.sendRedirect("success.jsp");
    }
    
    else{
    response.sendRedirect("erorr.jsp");
    
    }


%>