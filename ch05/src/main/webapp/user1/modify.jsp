<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String userid = request.getParameter("userid");

	// --------------------------------
	// 수정 데이터 조회 (데이터베이스 조회)
	// --------------------------------
	String host = "jdbc:mysql://localhost:3306/studydb";
	String user = "wldnd9895";
	String pass = "1234";
	
	
	try {
		// 1) 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2) 데이터베이스 접속
		Connection conn = DriverManager.getConnection(host, user, pass);
		// 3) SQL 실행 객체 생성
		String sql = "SELECT * FROM user1 where userid = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);

		// 4) SQL 실행
		// 5) 결과셋 처리
		// 6) 데이터베이스 접속 해제


	} catch(Exception e) {
		
	}
	
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user1::수정</title>
	</head>
	<body>
		<h3>User1 수정</h3>
		
		<a href="/ch05/1_jdbc.jsp">메인</a><br>
		<a href="/ch05/user1/list.jsp">목록</a><br>
		
	
		<form action="#" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>					
					<td><input type="text" name="userid"></td>
				</tr>
				<tr>
					<td>이름</td>					
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>휴대폰</td>					
					<td><input type="text" name="hp"></td>
				</tr>
				<tr>
					<td>나이</td>					
					<td><input type="text" name="age"></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="수정하기">
					</td>					
				</tr>
			</table>
		
		</form>
	</body>
</html>