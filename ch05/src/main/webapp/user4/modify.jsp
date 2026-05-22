<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="sub1.User4"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String userid = request.getParameter("userid");

	// 수정 데이터
	User4 user4 = null;
	
	
	try {
		// 1) JNDI 서비스 객체 생성
		Context initCtx = new InitialContext();
		Context ctx = (Context) initCtx.lookup("java:comp/env"); // JNDI 기본 환경 이름
		
		// 2) 커넥션풀 데이터베이스 커넥션 가져오기
		DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
		Connection conn = ds.getConnection();
		
		// 3) SQL 실행 객체 생성
		String sql = "SELECT * FROM user4 where userid = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, userid);
		
		// 4) SQL 실행
		ResultSet rs = psmt.executeQuery();
		
		// 5) 결과셋 처리
		if (rs.next()) {
			user4 = new User4();
			user4.setUserid(rs.getString(1));
			user4.setName(rs.getString(2));
			user4.setGender(rs.getString(3));
			user4.setAge(rs.getInt(4));
			user4.setHp(rs.getString(5));
			user4.setAddr(rs.getString(6));
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
		<title>user4::수정</title>
	</head>
	<body>
		<h3>User4 수정</h3>
		
		<a href="/ch05/1_jdbc.jsp">메인</a><br>
		<a href="/ch05/user4/list.jsp">목록</a><br>
		
	
		<form action="/ch05/user4/proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>					
					<td><input type="text" name="userid" value="<%= user4.getUserid() %>" readonly></td>
				</tr>
				<tr>
					<td>이름</td>					
					<td><input type="text" name="name" value="<%= user4.getName() %>"></td>
				</tr>
				<tr>
					<td>성별</td>					
					<td><input type="text" name="gender" value="<%= user4.getGender() %>"></td>
				</tr>
				<tr>
					<td>나이</td>					
					<td><input type="text" name="age" value="<%= user4.getAge() %>"></td>
				</tr>
				<tr>
					<td>전화번호</td>					
					<td><input type="text" name="hp" value="<%= user4.getHp() %>"></td>
				</tr>
				<tr>
					<td>주소</td>					
					<td><input type="text" name="addr" value="<%= user4.getAddr() %>"></td>
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