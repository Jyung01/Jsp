<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1_fileUpload</title>
		<%--
			날짜 : 2026/05/26
			이름 : 양지웅
			내용 : JSP 파일 업로드 실습
		 --%>
	</head>
	<body>
		<h3>1. 파일 업로드 실습</h3>
		
		<form action="./proc/fileUpload.jsp" method="post" enctype="multipart/form-data">
			<input type="text" name="userid" placeholder="아이디 입력"><br>
			<input type="text" name="name" placeholder="이름 입력"><br>
			<input type="file" name="fname"><br>
			<input type="submit" value="파일 전송"><br>
		</form>
	</body>
</html>