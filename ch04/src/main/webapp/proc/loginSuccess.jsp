<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>loginSuccess</title>
	</head>
	<body>
		<h3>로그인 성공</h3>
		
		<% 
		
			// 세션에 저장된 클라이언트 아이디 가져오기
			String userid = (String) session.getAttribute("sessUser");
		
			if(userid == null) {
				response.sendRedirect("./loginForm.jsp?login=required");
				return;	//프로그램 처리 종료
			}
		%>
		
		<p> <%= userid %> 님 반갑습니다!<br>
			<a href="./logout.jsp">로그아웃</a>
		</p>
		
				
	
	</body>
</html>