 <%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	if(name.equals("admin") && pwd.equals("1234")){
		out.println("로그인에 성공하였습니다.");
		
		Connection conn= null;
		PreparedStatement pstmt = null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.90:1521:xe","scott","1234");
			pstmt = conn.prepareStatement("insert into member values (?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, pwd);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
// 		finally{
// 			pstmt.close();
// 			conn.close();
// 		}
	}
	else
		out.println("로그인에 실패하였습니다.");
%>
</body>
</html>














