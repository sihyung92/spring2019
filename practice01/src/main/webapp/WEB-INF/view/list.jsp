<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>견종</th>
			<th>이름</th>
			<th>나이</th>
			<th>연락처</th>
		</tr>	
		<c:forEach items="${dlist }" var="bean">
			<tr>
				<td>${bean.num }</td>
				<td>${bean.breed }</td>
				<td>${bean.name }</td>
				<td>${bean.age }</td>
				<td>${bean.phone }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>