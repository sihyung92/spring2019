<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
</head>
<body>
	<form action="add" method="post">
		<div>
			num:<input type="text" name="num">		
		</div>
		<div>
			sub:<input type="text" name="sub">		
		</div>
		<input type="submit"/>
	</form>
	<h1>List page졸리다</h1>
		<table>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>날짜</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>
			<c:forEach items="${alist }" var="bean">
				<tr>
				<form action ="edit" method="post">
					<td>${bean.num }<input type="hidden" name="num" value="${bean.num }"/></td>
					<td><input type="text" name="sub" value="${bean.sub }"/></td>
					<td>${bean.nalja }</td>
					<td><button type="submit">수정</button></td>
				</form>
				<form action="del" method="post">
					<input type="hidden" name = "num" value="${bean.num }"/>
					<td><button type="submit">삭제</button></td>
				</form>
				</tr>
			</c:forEach>
		</table>
</body>
</html>
