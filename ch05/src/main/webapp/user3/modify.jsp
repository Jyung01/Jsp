<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="sub1.User3"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String userid = request.getParameter("userid");

	// 수정 데이터
	User3 user3 = null;

	
	
	try {
		// 1) JNDI 서비스 객체 생성
		Context initCtx = new InitialContext();
		Context ctx = (Context) initCtx.lookup("java:comp/env"); // JNDI 기본 환경 이름
		
		// 2) 커넥션풀 데이터베이스 커넥션 가져오기
		DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
		Connection conn = ds.getConnection();
				
		// 3) SQL 실행 객체 생성
		String sql = "SELECT * FROM user3 where userid = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, userid);
		
		// 4) SQL 실행
		ResultSet rs = psmt.executeQuery();
		
		// 5) 결과셋 처리
		if (rs.next()) {
			user3 = new User3();
			user3.setUserid(rs.getString(1));
			user3.setName(rs.getString(2));
			user3.setBirth(rs.getString(3));
			user3.setHp(rs.getString(4));
			user3.setAddr(rs.getString(5));
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
		<title>user3::수정</title>
	</head>
	<body>
		<h3>User3 수정</h3>
		
		<a href="/ch05/1_jdbc.jsp">메인</a><br>
		<a href="/ch05/user3/list.jsp">목록</a><br>
		
	
		<form action="/ch05/user3/proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>					
					<td><input type="text" name="userid" value="<%= user3.getUserid() %>" readonly></td>
				</tr>
				<tr>
					<td>이름</td>					
					<td><input type="text" name="name" value="<%= user3.getName() %>"></td>
				</tr>
				<tr>
					<td>생년월일</td>					
					<td><input type="text" name="birth" value="<%= user3.getBirth() %>"></td>
				</tr>
				<tr>
					<td>전화번호</td>					
					<td><input type="text" name="hp" value="<%= user3.getHp() %>"></td>
				</tr>
				<tr>
					<td>주소</td>					
					<td><input type="text" name="addr" value="<%= user3.getAddr() %>"></td>
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