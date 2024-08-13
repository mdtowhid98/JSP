<jsp:useBean class="model.Employee" id="e" />
<%@page import="dao.EmployeeDao" %>
<jsp:setProperty name="e" property="*" />

<% 

int i=EmployeeDao.saveEmployee(e);

if(i>0){
    
    response.sendRedirect("viewallemployee.jsp");
    }
    
    else{
    response.sendRedirect("erorr.jsp");
    
    }


%>
