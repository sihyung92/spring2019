<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>제목:${bean.sub }</div>
	<div>작성자:${bean.name }</div>
	<div>날짜:${bean.nalja }</div>
	<div>글번호:${bean.num }</div>
	<div>${bean.content }</div>
</body>
</html>