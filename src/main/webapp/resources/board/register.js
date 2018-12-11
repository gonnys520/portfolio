$(document).ready(function() {
	
	// register POST
	$('#register').on("click", function(e) {
		e.preventDefault();
		console.log("Post register....");
		
		$('#registerForm')
			.attr("method",'post')
			.attr("action",'/board/register')
			.submit();
	})
	
});

