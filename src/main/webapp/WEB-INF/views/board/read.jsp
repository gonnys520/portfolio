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
					<li class="active">내용보기</li>
				</ol>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="row">
			<div class="col-sm-20">
				<div class="white-box">
					<h3 class="box-title">내용보기</h3>
					<p class="text-muted">작성된 글을 보여줍니다.</p>
					<div class="col-sm-20">
						<div class="white-box">
							<form class="form-horizontal form-material">
								<div class="form-group">
									<label class="col-md-20">Title</label>
									<div class="col-md-20">
										<input type="text" class="form-control form-control-line"
											name='title' value='<c:out value="${board.title}"/>'
											readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-20">Writer</label>
									<div class="col-md-20">
										<input type="text" class="form-control form-control-line"
											name='writer' value='<c:out value="${board.writer}"/>'
											readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-20">Created Date</label>
									<div class="col-md-20">
									 <fmt:formatDate var="formatDate" value="${board.regdate}"
												pattern="yyyy년 MM월 dd일 HH시 mm분"/>
										<input type="text" class="form-control form-control-line"
											readonly="readonly" value="${formatDate}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-20">Content</label>
									<div class="col-md-20">
										<textarea rows="20" class="form-control form-control-line"
										name='content' readonly="readonly"><c:out value="${board.content}"/></textarea>
									</div>
								</div>
							</form>

							<form id='actionForm' action="/board/list">
								<div class="form-group">
									<div class="col-sm-20">
									<input type='hidden' name='bno' value='${board.bno}'>
										<button id="modify" class="btn btn-primary">수정 및 삭제</button>
										<button class="btn btn-danger">돌아가기</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /content -->
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
</div>


<%@include file="../includes/footer.jsp"%>