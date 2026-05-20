<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward2</title>
	</head>
	<body>
		<h3>forward2 페이지</h3>
		<%
			// 포워드 서버 내의 자원간 처리이동이기 때문에 타 서버 자원으로 이동 불가능
			pageContext.forward("https://naver.com");
			
		%>
	</body>
</html>