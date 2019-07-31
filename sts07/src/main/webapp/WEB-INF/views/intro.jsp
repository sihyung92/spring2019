<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.carousel-inner img{
		margin : 0 auto;
	}
</style>
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
	      	<li class="active"><a href="/day06/intro">INTRO</a></li>
	      	<li class="dropdown">
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
		<div id="content" class="row">
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