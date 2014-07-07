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
    
    
    <div class="panel panel-default"  style="width: 70%;margin: 0 auto;">
	  <div class="panel-body">
	  		
		<form class="form-horizontal" role="form" method="post" action="add.html">
		
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">id</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="id" id="id">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">First Name</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="nombre" id="nombre">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">Last Name</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="password" id="password">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">LastLogin</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="nombrecompleto" id="nombrecompleto">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">Comments</label>
		    <div class="col-sm-10">
		    	<input type="text" class="form-control" placeholder="Text input" name="nivel" id="nivel">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-default">Add</button>
		    </div>
		  </div>
		</form>
	
</div>
</div>
</div>	
	</body>
</html>