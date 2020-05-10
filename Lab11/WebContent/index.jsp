<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css" rel="stylesheet">
<link rel="stylesheet" href="Views/bootstrap.min.css">

<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/auth.js"></script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
			
				<form id="formLogin" class="text-center border border-light p-5">
				
				<p class="h4 mb-4">Login</p>
				
				<div class="d-flex justify-content-center">
					<input id="txtUsername" name="txtUsername" type="text" class="form-control form-control-sm mb-4" style="width: 300px;" placeholder="UserName:">
				</div>
				<div class="d-flex justify-content-center">
				<input id="txtPassword" name="txtPassword" type="password" class="form-control form-control-sm mb-4" style="width: 300px;" placeholder="Password:">
				</div><br>
				
				<input id="btnLogin" name="btnLogin" type="button" value="Login" class="btn btn-primary"><br><br>
				
				<!-- Alert -->
				<div id="alertError" class="alert alert-danger"></div>
				
				</form> <!-- End of Form -->
			
			</div> <!-- End of column -->
		</div> <!-- End of row -->
	</div> <!-- End of main container -->
	
	<% 
		if (session.getAttribute("Username") != null){
			response.sendRedirect("items.jsp");
		}
	%>
	

</body>
</html>