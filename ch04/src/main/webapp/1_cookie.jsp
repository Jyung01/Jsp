<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1_cookie</title>
		<%--
			날짜 : 2026/05/19
			이름 : 양지웅
			내용 : JSP 세션 쿠키
	 	--%>
	</head>
	<body>
		<h3>1. Cookie</h3>
		
		<form action="./proc/createCookie.jsp" method="post">
			<input type="text" name="userid" placeholder="아이디 입력"><br>
			<input type="text" name="name" placeholder="이름 입력"><br>
			<input type="date" name="birth"><br>
			<input type="number" name="age" placeholder="나이 입력"><br>
			<input type="submit" value="전송"><br>
		</form>
				
		
	</body>
</html>