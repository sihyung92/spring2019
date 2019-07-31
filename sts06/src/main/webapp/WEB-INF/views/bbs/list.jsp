<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery (necessary for Bootstrap's  JavaScript plugins) -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
	    console.log("ready!");
	});
</script>
</head>
<body>
<jsp:include page="/template/header.jsp" />
<div class="page-header">
  <h1>목록페이지<small>누르셔</small></h1>
</div>
	<table class="table">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${alist }" var="bean">
		<tr>
			<td><a href="detail?idx=${bean.num }">${bean.num }</a></td>
			<td><a href="detail?idx=${bean.num }">${bean.sub }</a></td>
			<td><a href="detail?idx=${bean.num }">${bean.name }</a></td>
			<td><a href="detail?idx=${bean.num }">${bean.nalja }</a></td>
		</tr>
		</c:forEach>		
	</table>
	<a class="btn btn-default" role="button" href="add">입 력</a>
</body>
</html>