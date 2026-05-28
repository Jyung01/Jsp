<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1_ServletTest</title>
	</head>
	<body>
		<h3>1. 서블릿 테스트</h3>
		
		<h4>Get 요청</h4>
		<a href="/ch08/hello.do">HelloServlet</a>
		<a href="/ch08/welcome.do">WelcomeServlet</a>
		<a href="/ch08/greeting.do">GreetingServlet</a>
		
		<h4>Post 요청</h4>
		<form action="./hello.do" method="post">
			<input type="text" name="userid" placeholder="아이디입력" /><br>
			<input type="password" name="pass" placeholder="비밀번호입력"/><br>
			<input type="submit" value="전송" /><br>
		</form>
	</body>
</html>