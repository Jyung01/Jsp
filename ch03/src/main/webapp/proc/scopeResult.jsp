<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>scopeResult</title>
		<%--
			날짜 : 2026/05/19
			이름 : 양지웅
			내용 : JSP 내장객체 - 내장객체 범위 실습
	 	--%>
	</head>
	<body>
		<h3>내장객체 설정 값 확인</h3>
		<p>
			pageContext 값 : <%= pageContext.getAttribute("name") %><br>
			request 값 : <%= request.getAttribute("name") %><br>
			session 값 : <%= session.getAttribute("name") %><br>
			application 값 : <%= application.getAttribute("name") %><br>
		</p>
		
		
				
		
	</body>
</html>