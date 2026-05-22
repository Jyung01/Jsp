<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String seq = request.getParameter("seq");
	
	// ------------------------------
	// 데이터베이스 저장
	// ------------------------------
	
	String host = "jdbc:mysql://localhost:3306/studydb";
	String user = "wldnd9895";
	String pass = "1234";
	

	try {
		// 1) 드라이버 로드 - 생략가능
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2) 데이터베이스 접속
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		// 3) SQL 실행 객체 생성
		String sql = "DELETE FROM user5 WHERE seq=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, seq);

		// 4) SQL 실행
		psmt.executeUpdate();

		// 5) 결과값 처리(SELECT 일때만)
		// 6) 데이터베이스 종료
		psmt.close();
		conn.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	// 목록 이동
	response.sendRedirect("/ch05/user5/list.jsp?delete=success");

%>