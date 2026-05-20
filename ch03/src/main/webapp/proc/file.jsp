<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>file</title>
	</head>
	<body>
		<h3>file 페이지</h3>
		<%
			// response 헤더 Content-Type 값을 파일값으로 다운로드
			response.setHeader("Content-Type", "application/octet-stream");
			
		%>
	</body>
</html>