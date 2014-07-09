<%@ page import="java.util.List" %>
<%@ page import="com.kardumen.customer.model.Customer"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>CRUD</title>
		<meta charset="utf-8" />


   <!-- Bootstrap -->
    <link href="/MyCrudSpring/css/bootstrap.min.css" rel="stylesheet">
	<script src="/MyCrudSpring/js/jquery.js"></script>
	<script src="/MyCrudSpring/js/bootstrap.min.js" type="text/javascript"></script>

	</head>
	<body>
		<h1>Lista</h1>
		
 <div class="container-fluid">   
    
    
    <div class="panel panel-default"  style="width: 70%;margin: 0 auto;">
	  <div class="panel-body">
	  		
		<div class="table-responsive">
		
		
		<a href="addCustomerPage.html" class="btn btn-primary btn-sm">Add</a>
		
		
		
		
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>id</th>
            <th>First Name</th>
            <th>Password</th>
            <th>Name complete</th>
            <th>Level</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        
         
<% List<Customer> customers = (List<Customer>)request.getAttribute("customer");
		    for(Customer e : customers){
%>
			<tr>
				<td><%=e.getUsr_id() %></td>
				<td><%=e.getUsr_nombre() %></td>
				<td><%=e.getUsr_password() %></td>
				<td><%=e.getUsr_nombrecompleto() %></td>
				<td><%=e.getUsr_nivel() %></td>
				<td> <a href="update.html?id=<%=e.getUsr_id() %>" class="btn btn-primary btn-sm" >Edit</a> 
	             	 <a href="delete.html?id=<%=e.getUsr_id() %>" class="btn btn-primary btn-sm" >Delete</a>
	            </td>
			</tr>
		<%
			}
		%>
	     </tbody>
      </table>
    </div>
	
</div>
</div>
</div>	
	</body>
</html>