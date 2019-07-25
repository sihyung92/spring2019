<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-10">
				<div class="page-header">
					<h1 class="lead">
						<Strong>${bean.num }번째 글<small>상세 페이지</small></Strong>
					</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-1">
				<a href="list.bit" class="btn btn-default btn-lg" role="button">리스트</a>
				<br>
				<a href="add.bit" class="btn btn-default btn-lg" role="button">글쓰기</a>
			</div>
			<div class="col-xs-11">
				<form class="form-horizontal" action="update.bit" method="post">
					<input type="hidden" name="num" value="${bean.num }">
					<div class="form-group">
						<label for="inputEmail3" class="col-xs-2 control-label">제목</label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="sub" value="${bean.sub }">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-xs-2 control-label">글쓴이</label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="name"
								value="${bean.name }">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<textarea name="content" class="form-control">${bean.content }</textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<button type="submit" class="btn btn-primary">수정</button>
							<button type="reset"  class="btn btn-danger">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>