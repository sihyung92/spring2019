<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/css/bootstrap-theme.min.css" />
<script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		if(${msg}){
			$('h1').html('상세 페이지');
			$('input,textarea').attr('readonly','readonly');
			$('form').next().children(':last').children().click(function(){
					$('.del').attr('method','POST').submit();
					return false;
				});
			$('form button').hide();
		}else{
			$('h1').html('수정 페이지');
			$('form').next().hide();
			$('form button').show();
		}
		});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="/">
								<div>Hello, world!</div>
							</a>
						</div>
						<p class="navbar-text"><a href="/" class="navbar-link">HOME</a></p>
						<p class="navbar-text"><a href="/bbs/list.bit" class="navbar-link">LIST</a></p>
						<p class="navbar-text navbar-right">/&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="navbar-link">LogIn</a>&nbsp;&nbsp;</p>
						<p class="navbar-text navbar-right"><a href="#" class="navbar-link">JOIN</a></p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
	 			 <h1>Hello, Detail!</h1>
	 			 <p>...</p>
	 			 <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" action="update.bit" method="POST">
				<input type="hidden" name="num" value="${bean.num }">
				  <div class="form-group">
				    <label for="sub" class="col-sm-2 control-label">제목</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="sub" id="sub" placeholder="${bean.sub }">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="name" class="col-sm-2 control-label">이름</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="name" id="name" placeholder="${bean.name }">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <textarea class="form-control" name="content" id="content" placeholder="${bean.sub }"></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				    	<div class="btn-group btn-group-justified" role="group" aria-label="...">
					    	<div class="btn-group" role="group" aria-label="...">
					      		<button type="submit" class="btn btn-primary">입 력</button>
					      	</div>
					    	<div class="btn-group" role="group" aria-label="...">
					      		<button type="reset" class="btn btn-default">취 소</button>
					      	</div>
				    	</div>
				    </div>
				  </div>
				</form>
				<div class="btn-group btn-group-justified" role="group">
					<div class="btn-group" role="group">
					<a href="edit.bit?idx=${bean.num }" class="btn btn-default" role="button">수정</a>
					</div>
					<div class="btn-group" role="group">
					<a href="#" class="btn btn-danger" role="button" >삭제</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form class="del" action="delete.bit">
		<input type="hidden" name="idx" value="${bean.num }"/>
	</form>
</body>
</html>
