<%@ page import="java.util.List" %>
<%@ page import="com.kardumen.customer.model.Customer"%>
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
		<h1>Holy</h1>
		
 <div class="container-fluid">   
    <%
		Customer customer = (Customer)request.getAttribute("customer");
	%>
    
    <div class="panel panel-default"  style="width: 70%;margin: 0 auto;">
	  <div class="panel-body">
	  		
		<form class="form-horizontal" role="form" method="post" action="update.html" >
		
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">id</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="id" id="id" value="<%=customer.getUsr_id() %>">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">First Name</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="nombre" id="nombre" value="<%=customer.getUsr_nombre()%>">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">Last Name</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="password" id="password"  value="<%=customer.getUsr_password() %>">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">LastLogin</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="nombrecompleto" id="nombrecompleto"  value="<%=customer.getUsr_nombrecompleto() %>" >
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">Comments</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="nivel" id="nivel"  value="<%=customer.getUsr_nivel() %>" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-default">Update</button>
		    </div>
		  </div>
		</form>
	
</div>
</div>
</div>	
	</body>
</html>