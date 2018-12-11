$(document).ready(function() {
	
		var actionForm=$('#actionForm');
		
		$('#modify').on("click", function(e) {
			console.log("modify btn click.........");
			e.stopPropagation();
			e.preventDefault();
			

			$("#modifyForm").submit();
			

		})
		
		$('#remove').on("click", function(e) {
			e.preventDefault();
			
			console.log("remove btn click.........");
			
			$("#actionForm")
			.attr("method",'post')
			.attr("action",'/board/remove')
			.submit();
			
		})
		
	
	});