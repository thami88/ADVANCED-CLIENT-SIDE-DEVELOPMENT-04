<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css" rel="stylesheet">

<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/items.js"></script>

</head>
<body>


	<!-- -------------------------- Navigation Bar ------------------------------------- -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark special-color-dark">
		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#basicExampleNav" aria-controls="basicExampleNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Collapsible content -->
		<div class="collapse navbar-collapse" id="basicExampleNav">

			<!-- Links -->
			<ul class="navbar-nav mr-auto">
				<li class="nav-item "><a class="nav-link" href="#">Home </a></li>
				<li class="nav-item active"><a class="nav-link" href="#">Item Management<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			</ul>
			<!-- Links -->
		</div>
		<!-- Collapsible content -->
	</nav>

	<!-- ---------------------------- End of Nav ----------------------------- -->

	<br>
	<div class="container-fluid">

		<div class="row">
			<div class="col">
				<!-- ---------------------------- Start of Jumborone ----------------------------- -->

				<div class="jumbotron card card-image mt-5" style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">
					<div class="text-white text-center py-5 px-4">
						<div>
							<h2 class="card-title h1-responsive pt-3 mb-5 font-bold"><strong>Items Management</strong></h2>
						</div>
					</div>
				</div>

				<!-- ---------------------------- End of Jumborone ----------------------------- -->
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col">

					<form id="formItem" name="formItem"
						class="text-center border border-light p-5">

						<p class="h4 mb-4">Add / Update Items</p>

						<div class="d-flex justify-content-center">
							<input id="itemCode" name="itemCode" type="text" class="form-control form-control-sm" style="width: 300px;" placeholder="Item Code:">
						</div><br>
						<div class="d-flex justify-content-center">
							<input id="itemName" name="itemName" type="text" class="form-control form-control-sm" style="width: 300px;" placeholder="Item Name:">
						</div><br>
						<div class="d-flex justify-content-center">
							<input id="itemPrice" name="itemPrice" type="text" class="form-control form-control-sm" style="width: 300px;" placeholder="Item Price:">
						</div><br>
						<div class="d-flex justify-content-center">
							<input id="itemDesc" name="itemDesc" type="text" class="form-control form-control-sm" style="width: 300px;" placeholder="Item Description:">
						</div><br>

						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-dark-green btn-sm"> <input type="hidden"
							id="hidItemIDSave" name="hidItemIDSave" value="">

					</form><br>

					<!-- Alert For Success Message -->
					<div class="d-flex justify-content-center">
						<div id="alertSuccess" class="alert alert-success text-center" style="width: 300px;"></div>
					</div>
					<!-- Alert For Error Message -->
					<div class="d-flex justify-content-center">
						<div id="alertError" class="alert alert-danger text-center" style="width: 300px;"></div>
					</div>

				</div>
				<!-- End of Column -->
			</div>
			<!-- End of 1st Row -->
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">

				<p class="h4 text-center mb-4">Manage Items</p>

				<div id="divItemsGrid">
					<%
						Item itemObj = new Item();
						out.print(itemObj.readItems());
					%>
				</div>
			</div>

		</div>
		<!-- End of 2nd Row  -->

	</div>
	<!-- End of Container -->
	
		<% 
		if (session.getAttribute("Username") == null){
			response.sendRedirect("index.jsp");
		}
		%>

	<footer class="page-footer font-small special-color-dark pt-4">

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">Items Management</div>
		<!-- Copyright -->

	</footer>

</body>
</html>