<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<% 

    
List<Employee>list=EmployeeDao.viewAllEmployee();
request.setAttribute("list", list);




%>

<table border="1">
    
    <thead>
        
        <tr>
            
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Cell</th>
            <th>Action</th>  
            
            
        </tr>   
        
        
    </thead> 
    
    <tbody>
        
        <c:forEach var="s" items="${list}">
            
            <tr>
              
                <td>${s.getId()}</td>
                <td>${s.getName()}</td>
                <td>${s.getEmail()}</td>
                <td>${s.getCell()}</td>
                <td>
                    <a href="updateemployeeform.jsp?id=${s.getId()}">Edit</a>
                    <a href="deleteemployee.jsp?id=${s.getId()}">Delete</a>
                
                </td>
                
                
            </tr> 
            
            
        </c:forEach>
           
           
        
        
    </tbody>
    
    
    
    
</table>