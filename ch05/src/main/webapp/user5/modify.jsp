<%@page import="sub1.User5"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String seq = request.getParameter("seq");

	// 수정 데이터
	User5 user5 = null;

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
		String sql = "SELECT * FROM user5 where seq = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, seq);
		
		// 4) SQL 실행
		ResultSet rs = psmt.executeQuery();
		
		// 5) 결과셋 처리
		if (rs.next()) {
			user5 = new User5();
			user5.setSeq(rs.getString(1));
			user5.setName(rs.getString(2));
			user5.setGender(rs.getString(3));
			user5.setAge(rs.getInt(4));
			user5.setAddr(rs.getString(5));
		}

		// 6) 데이터베이스 접속 해제
		rs.close();
		psmt.close();
		conn.close();
		


	} catch(Exception e) {
		
	}
	
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user5::수정</title>
	</head>
	<body>
		<h3>User5 수정</h3>
		
		<a href="/ch05/1_jdbc.jsp">메인</a><br>
		<a href="/ch05/user5/list.jsp">목록</a><br>
		
	
		<form action="/ch05/user5/proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>					
					<td><input type="text" name="seq" value="<%= user5.getSeq() %>" readonly></td>
				</tr>
				<tr>
					<td>이름</td>					
					<td><input type="text" name="name" value="<%= user5.getName() %>"></td>
				</tr>
				<tr>
					<td>성별</td>					
					<td><input type="text" name="gender" value="<%= user5.getGender() %>"></td>
				</tr>
				<tr>
					<td>나이</td>					
					<td><input type="text" name="age" value="<%= user5.getAge() %>"></td>
				</tr>
				<tr>
					<td>주소</td>					
					<td><input type="text" name="addr" value="<%= user5.getAddr() %>"></td>
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