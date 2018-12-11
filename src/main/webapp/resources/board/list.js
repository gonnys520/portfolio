//
//$(document).ready(function() {
//	
//	var result = '<c:out value="${result}"/>';
//	
//
//	//get read call
//	$('.board').on("click", function(e) {
//		e.preventDefault();
//		var bno = $(this).attr('href');
//	})
//
//
//	
//	checkModal(result);
//	
//	function checkModal(result){
//		
//		console.log(result);
//		
//		if (result === ''){
//			
//			return;
//		}
//		
//		if (result ==='SUCCESS') {
//			
//			$(".modal-body").html("게시글이 등록되었습니다.");
//			$("#myModal").modal("show");
//		}
//		
//
//	}
//});