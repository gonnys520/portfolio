$(document).ready(function() {
	$('#register').on("click", function(e) {
		e.preventDefault();
		console.log("Post register....");
		
		$('#registerForm').submit();
	})
});

