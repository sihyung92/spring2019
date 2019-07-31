<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap-theme.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

<style type="text/css">
	nav img{
		height : 100%;
	}
</style>
<script type="text/javascript">
	$(function(){
		$('form button[type=submit], form button[type=reset]').hide();
		$('form button[type=button]').first().click(function(){
			$('form button[type=button]').hide();
			$('form button[type=submit], form button[type=reset]').show();
			$('.jumbotron h1').html('수정페이지');
			$('#sub,#content').removeAttr('readonly');
		}).next().click(function(){
			$("#_method").val("DELETE");
			$('form').submit();
		});
	}); 
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-bottom">
	  <div class="container-fluid">
	    <div class="navbar-header">
		  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${pageContext.request.contextPath }">
	        <img alt="Brand" src="${pageContext.request.contextPath }/imgs/logo.png">
	      </a>
	    </div><!-- /.navbar-header end -->
        <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	      	<li><a href="/day06/">HOME</a></li>
	      	<li><a href="/day06/intro">INTRO</a></li>
	      	<li class="dropdown active">
	      		<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
	      		role="button" aria-haspopup="true" aria-expanded="false">BBS<span class="caret"></span></a>
	      		<ul class="dropdown-menu">
			      	<li><a href="/day06/bbs/">LIST</a></li>
			      	<li role="seperator" class="divider"></li>
			      	<li><a href="/day06/bbs/add">ADD</a></li>
		      	</ul>
      		</li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid end -->
	</nav>
	    <!-- /navbar end -->
	<div class="container">
		<div class="row">
			<div class="col-md-12 jumbotron">
				<h1>디테일페이지</h1>
			</div>
		</div>
		<div id="content" class="row">
			<div class="col-md-12">
				<form class="form-horizontal" method="POST">
					<input type="hidden" id="_method" name="_method" value="put"/>
				  <div class="form-group">
				    <label for="num" class="col-sm-2 control-label">글번호</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="num" id="num" value="${bean.num }" readonly="readonly">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="cnt" class="col-sm-2 control-label">조회수</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="cnt" id="cnt" value="${bean.cnt }" disabled="disabled">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="sub" class="col-sm-2 control-label">제목</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="sub" id="sub" value="${bean.sub }" readonly="readonly">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="name" class="col-sm-2 control-label">글쓴이</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="name" id="name" value="${bean.sub }" disabled="disabled">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="nalja" class="col-sm-2 control-label">날짜</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="nalja" id="nalja" value="${bean.nalja }" disabled="disabled">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
			    	 <textarea class="form-control" id="content" name="content" readonly="readonly">${bean.content }</textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-primary">submit</button>
				      <button type="reset" class="btn btn-default">reset</button>
				      <button type="button" class="btn btn-default">수정</button>
				      <button type="button" class="btn btn-danger">삭제</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
		<div id="footer" class="row">
			<div class="col-md-12 jumbotron">
				<address>
				  <strong>비트캠프 서초본원</strong><br>
				  갱남<br>
				  어딘가<br>
				  <abbr title="Phone">P:</abbr> (123) 456-7890<br>
				  <strong>Copyright &copy; 비트캠프 All rights reserved.</strong><br>
				  <a href="mailto:bit01class@gmail.com">bit01class@gmail.com</a>
				</address>	
			</div>
		</div>
	</div>
</body>
</html>