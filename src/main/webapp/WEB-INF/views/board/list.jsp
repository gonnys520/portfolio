<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<%@include file="../includes/header.jsp"%>


<!-- Page Content -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Free Board</h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li><a href="/board/list">Free Board</a></li>
					<li class="active">자유게시판</li>
				</ol>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<h3 class="box-title">자유게시판</h3>
					<p class="text-muted">자유롭게 이야기를 나눌 수 있는 게시판 입니다.</p>
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>제목</th>
									<th>글쓴이</th>
									<th>작성일</th>
								</tr>
							</thead>

							<c:forEach items="${list}" var="board">
								<tbody>
									<tr class='board'
										onClick="location.href='/board/read?bno=<c:out value="${board.bno}"/>'">
										<td><c:out value="${board.bno}" /></td>
										<td><c:out value="${board.title}" /></td>
										<td><c:out value="${board.writer}" /></td>
										<td><fmt:formatDate value="${board.regdate}"
												pattern="yy/MM/dd HH:mm:ss" /></td>
									</tr>
								</tbody>
							</c:forEach>

						</table>
					</div>
				</div>
				<!-- /content -->
				<div class="center p-20">
					<button type="submit" onclick="location.href='/board/register'"
						class="btn btn-danger btn-block btn-rounded waves-effect waves-light">글쓰기</button>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
</div>

   <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
  aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
          aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">ALERT</h4>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
            <button type="button" class="btn btn-warning" data-dismiss="modal">확인</button>
    <!-- /.modal-content -->
   </div>
  <!-- /.modal-dialog -->
    </div>
  <!-- /.modal--->
  </div>
</div>



<%@include file="../includes/footer.jsp"%>




<script>

$(document).ready(function() {
	
	// POST register, modify modal
	var result = '<c:out value="${result}"/>';
	
	checkModal(result);
	
	function checkModal(result){
		console.log(result);
		
		if (result === ''){
			return;
		}
		
		if (result > 0) {
			$(".modal-body").html("작업이 성공적으로 완료되었습니다.");
			$("#myModal").modal("show");
		}

	}
});

</script>