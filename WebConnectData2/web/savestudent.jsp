<jsp:useBean class="model.Student" id="s"/>
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="s" property="*"/>

<%

int i=StudentDao.saeveStudent(s);

if(i>0){
    
response.sendRedirect("success.jsp");
    
    }

    else{
    
    response.sendRedirect("erorr.jsp");
    
    }


%>
