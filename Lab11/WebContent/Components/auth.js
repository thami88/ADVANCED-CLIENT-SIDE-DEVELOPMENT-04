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