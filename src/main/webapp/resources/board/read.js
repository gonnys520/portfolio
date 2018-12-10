$(document).ready(function(){
	
	$('#modify').on("click", function(e) {
		e.preventDefault();
		console.log("get modify....");
		
		$('#readForm').submit();
	})
	
});