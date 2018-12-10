$(document).ready(function(){
	
	var actionForm = $('#actionForm');
	
	$('#modify').on("click", function(e) {
		e.preventDefault();
		console.log("get modify....");
		
		actionForm.attr("action", "/board/modify")
		.submit();
	})
	
	
});