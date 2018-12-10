<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<%@include file="../includes/header.jsp"%>
<script src="../resources/board/register.js"></script>

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
					<li class="active">글쓰기</li>
				</ol>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="row">
			<div class="col-sm-20">
				<div class="white-box">
					<h3 class="box-title">글쓰기</h3>
					<p class="text-muted">작성하고 싶은 글을 자유롭게 적어주세요.</p>
					<div class="col-sm-20">
						<div class="white-box">
							<form id="registerForm" class="form-horizontal form-material" method="post">
								<div class="form-group">
									<label class="col-md-20">Title</label>
									<div class="col-md-20">
										<input type="text" placeholder="제목을 입력하세요."
											class="form-control form-control-line" name="title">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-20">Writer</label>
									<div class="col-md-20">
										<input type="text" placeholder="작성자를 입력하세요."
											class="form-control form-control-line" name="writer">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-20">Content</label>
									<div class="col-md-20">
										<textarea rows="20" class="form-control form-control-line" name="content"></textarea>
									</div>
								</div>
								</form>
								
								<form action="/board/list">
								<div class="form-group">
									<div class="col-sm-20">
										<button id="register" class="btn btn-primary">작성완료</button>
										<button id="cancle" class="btn btn-danger">돌아가기</button>
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