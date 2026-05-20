<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>5_exception</title>
		<%--
			날짜 : 2026/05/19
			이름 : 양지웅
			내용 : JSP 내장객체 - exception 실습
	 	--%>
	</head>
	<body>
		<h3>5. exception 내장객체</h3>
		
		<%--
			주요 응답코드
			 - 200 : 요청 성공
			 - 3xx : 리다이렉트 오류
			 - 403 : 권한 없음
			 - 404 : 페이지 없음
			 - 5xx : 서버 내부 문법 에러
			
		 --%>
		
		<a href="./sample.jsp">4xx 에러</a>
		<a href="./proc/error.jsp">5xx 에러</a>
		
				
		
	</body>
</html>