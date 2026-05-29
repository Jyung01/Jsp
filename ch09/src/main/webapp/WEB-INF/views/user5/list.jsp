<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user5::목록</title>
	</head>
	<body>
		<h3>User5 목록</h3>
		
		<a href="/ch09">메인</a><br>
		<a href="/ch09/user5/register.do">등록</a><br>
		
	
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>주소</th>
				<th>관리</th>
			</tr>
			<!-- 
				- ListController 에서 req 객체로 setAttribute 한 dtoList 를 표현언어에서
				  requestScope 로 참조
				- 표현언어 내장객체 requestScope 는 일반적으로 생략
			 -->
			<c:forEach var="dto" items="${dtoList}">
				<tr>
					<td>${dto.seq}</td>
					<td>${dto.name}</td>
					<td>${dto.gender}</td>
					<td>${dto.age}</td>
					<td>${dto.addr}</td>
					<td>
						<a href="/ch09/user5/modify.do?seq=${dto.seq}">수정</a>
						<a href="/ch09/user5/delete.do?seq=${dto.seq}">삭제</a>						
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>