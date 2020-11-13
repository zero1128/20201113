<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i =0; i< 10; i++){
		out.println("i = "+ i+"<br/>");
	}

	//구구단 출력
%>
<form action="b.jsp" method="post">
	구구단수 <input type="text" name="number"/>
	<input type="submit" value="확인"/>
</form>

</body>
</html>