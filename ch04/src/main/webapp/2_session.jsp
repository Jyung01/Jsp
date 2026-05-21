<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2_session</title>
		<%--
			날짜 : 2026/05/19
			이름 : 양지웅
			내용 : JSP 세션
	 	--%>
	</head>
	<body>
		<h3>2. Session</h3>
		
		<h4>Session ID 확인</h4>
		<%= session.getId() %><br>
		<%= request.getSession().getId() %>
		
		<h4>session 로그인</h4>
		<a href="./proc/loginForm.jsp">로그인 폼</a>
		
	</body>
</html>