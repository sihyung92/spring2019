<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
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
<style type="text/css">
	.item > img{
		margin : 0px auto;
	}
</style>
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
	 			 <h1>Hello, Add!</h1>
	 			 <p>...</p>
	 			 <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" action="insert.bit" method="POST">
				  <div class="form-group">
				    <label for="sub" class="col-sm-2 control-label">제목</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="sub" id="sub" placeholder="제목">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="name" class="col-sm-2 control-label">이름</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="name" id="name" placeholder="이름">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <textarea class="form-control" name="content" id="content" placeholder="내용"></textarea>
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
			</div>
		</div>
	</div>
</body>
</html>
