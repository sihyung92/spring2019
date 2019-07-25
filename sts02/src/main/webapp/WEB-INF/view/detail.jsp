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
<script type="text/javascript">
	function deleteData(){
		$.post('delete.bit',{idx:${bean.num}},function(){
			window.location.href="list.bit";	
		});
	}
</script>
</head>
<body>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">주의</h4>
      </div>
      <div class="modal-body">
        정말 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-danger" onclick="deleteData();">삭제</button>
      </div>
    </div>
  </div>
</div>
	<!-- modal end -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-10">
				<div class="page-header">
					<h1 class="lead">
						<Strong>${bean.num }번째 글<small>상세 페이지</small></Strong>
					</h1>
					<hr>
					<p>${bean.nalja }</p>
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
							<form class="form-horizontal" action="insert.bit" method="post">
					<div class="form-group">
						<label for="inputEmail3" class="col-xs-2 control-label">제목</label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="sub"
								value="${bean.sub }" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-xs-2 control-label">글쓴이</label>
						<div class="col-xs-10">
							<input type="text" class="form-control" name="name"
								value="${bean.name }" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<textarea name="content" class="form-control" readonly="readonly">${bean.content }</textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<a href="edit.bit?idx=${bean.num }" role ="button" class="btn btn-primary">수정</a>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">삭제</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>