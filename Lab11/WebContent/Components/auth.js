$(document).on("click", "#btnLogin", function(event){
	
	// Clear Alerts /-------------------------------
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form Validation /----------------------------
	var status = validateLoginForm();
	if (status != true) {
		
		$("#alertError").text(status);
		$("#alertError").show();
		
		return;
		
	}
	
	// If Valid /---------------------------------
	$.ajax({
		
		url : "LoginAPI",
		type : "POST",
		data : $("#formLogin").serialize(),
		dataType : "text",
		complete : function(response, status){
			
			onLoginComplete(response.responseText, status);
		}
		
	});
	
});

function onLoginComplete(response, status){
	
	if (status == "success") {
		
		var resultSet = JSON.parse(response);
		
		if (resultSet.status.trim() == "success") {
			
			document.location = "item.jsp";
			
		} else if (resultSet.status.trim() == "error") {
			
			$("#alertError").text(resultSet.data);
			$("alertError").show();

		}
		
	} else if (status == "error") {
		
		$("#alertError").text("Error While Login.");
		$("#alertError").show();

	} else {
		
		$("#alertError").text("Unknown Error While Login.");
		$("#alertError").show();
		
	}
	
	$("#hidItemIDSave").val("");
	$("#formItem")[0].rest();
	
}

function validateLoginForm(){
	
	// Username /--------------------------------------------
	if ($("#txtUsername").val().trim() == "") {
		
		return "Insert Username.";
		
	}
	
	// Password /--------------------------------------------
	if ($("#txtPassword").val().trim() == "") {
		
		return "Insert Password.";
		
	}
	
	return true;
	
}

// Logout /------------------------------------------------------

$(document).on("click", "#btnLogout", function(event){
	
	$.ajax({
		
		url : "LoginAPI",
		type : "DELETE",
		data : "",
		dataType : "text",
		complete : function(response, status){
			
			onLogoutComplete(response.responseText, status);
		}
		
	});
	
});

function onLogoutComplete(response, status){
	
	if (status == "success") {
		
		if (response.trim() == "success") {
			
			document.location = "index.jsp";
			
		}
		
	}
	
}