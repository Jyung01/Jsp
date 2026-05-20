<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>6_scope</title>
		<%--
			날짜 : 2026/05/19
			이름 : 양지웅
			내용 : JSP 내장객체 - 내장객체 범위 실습
	 	--%>
	</head>
	<body>
		<h3>6. 내장객체 범위</h3>
		<%
			// 내장객체 값 설정
			pageContext.setAttribute("name", "김유신");
			request.setAttribute("name", "김춘추");
			session.setAttribute("name", "장보고");
			application.setAttribute("name", "강감찬");
		%>
		
		<h4>내장객체 설정 값 확인</h4>
		<p>
			pageContext 값 : <%= pageContext.getAttribute("name") %><br>
			request 값 : <%= request.getAttribute("name") %><br>
			session 값 : <%= session.getAttribute("name") %><br>
			application 값 : <%= application.getAttribute("name") %><br>
		</p>
		
		<%
			pageContext.forward("./proc/scopeResult.jsp");
		%>
		
		
				
		
	</body>
</html>