
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<% 

    
List<Employee>list=EmployeeDao.viewAllEmployee();
request.setAttribute("list", list);




%>
<style>
table {
  width: 100%;
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid black;
}

th, td {
  padding: 8px;
  text-align: left;
}

th {
  background-color: #f2f2f2;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #ddd;
}

a {
  text-decoration: none;
  color: #007bff; /* Blue color for links, adjust as needed */
}

a:hover {
  text-decoration: underline;
}

</style>

<h1 style="text-align: center;color: graytext">Employee Form</h1>
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
                    <a href="deleteemployee.jsp?id=${s.getId()}" style="color: red">Delete</a>
                
                </td>
                
                
            </tr> 
            
            
        </c:forEach>
           
           
        
        
    </tbody>
    
    
    
    
</table>
