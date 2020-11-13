<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
<!-- exception예외처리, 쿠키, 세션, update로직 완성하고,, 고급sql.. -->
	<%
		Cookie cookie = new Cookie("id","asdf");
		cookie.setMaxAge(60*60*24);// 24시간 저장..
		response.addCookie(cookie);
	%>
	<form action="ex02_checked.jsp">
		<input type="submit" value="쿠키확인"/>
	</form>
</body>
</html>