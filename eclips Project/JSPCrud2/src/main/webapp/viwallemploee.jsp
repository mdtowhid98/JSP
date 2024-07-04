
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>


<% 

List<Employee>list=EmployeeDao.viewAllEmployee();

request.setAttribute("list",list);




%>


<table border="1">
    
    <thead>
        <tr>
    <th>Id</th>  
    <th>Name</th>  
    <th>Cell</th>  
    <th>Action</th>  
        
     </tr>     
    </thead>
    
    <tbody>
      
        <c:forEach var="e" items="${list}">
           
            <tr>
                
                <td>${e.getId()}</td>
                <td>${e.getName()}</td>
                <td>${e.getCell()}</td>
                <td>
                    <a href="updateemployeeform.jsp?id=${e.getId()}">Edit</a>
                    <a href="deleteemployee.jsp?id=${e.getId()}">Delete</a>
                </td>
            </tr>
            
            
            
        </c:forEach>
        
        
        
    </tbody>
    
    
</table>
