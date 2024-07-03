<jsp:useBean class="model.Teacher" id="t"/>
<%@page import="dao.TeacherDao" %>
<jsp:setProperty name="t" property="*"/>


<%

int i=TeacherDao.saveTeacher(t);

if(i>0){
    
    response.sendRedirect("success.jsp");
    
    }
    else{
    
    response.sendRedirect("error.jsp");
    
    }



%>
