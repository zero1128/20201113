<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
// 	out.println("id = "+ id);
// 	out.println("pw = "+ pw);

	Cookie[] cook = request.getCookies();
	for(int i =0; i<cook.length ;i++){
		String name = cook[i].getName();
		String value = cook[i].getValue();
		System.out.println("name = "+name);
		System.out.println("value = "+value);
		if(name.equals("id"))
			id = value;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	.height100{
		height: 100px;
		line-height: 100px;
	}
	.blue{
		background-color: blue;
	}
	.yellow{
		background-color: yellow;
	}
	.red{
		background-color: red;
/* 		margin: 10px; */
	}
	.gray{
		background-color: gray;
/* 		margin: 10px; */
	}
</style>
<script type="text/javascript">
	function doLogout(){
// 		alert("연결됨");	ctrl + shift + c
		location.href="logout.jsp";
	}
</script>
</head>
<body>
	<div class="container blue">
		<div class="row yellow height100">
			<div class="col-md-3 red">
				홈페이지
			</div>
			<div class="col-md-6 gray">
				<a href="join.html">회원가입</a>
				<a href="list.html">회원목록</a>	
			</div>
			<div class="col-md-3 red">
				<form action="loginproc.jsp">
				<!-- 세션 기능 만들어야 하고 쿠키 기능 만들어야함 -->
					<% if( id == null || pw ==null){ %>
					<input class="form-control" type="text" name="id" value="<%=id%>" placeholder="아이디"/>
					<input class="form-control" type="text" name="pw" value="" placeholder="비밀번호"/>
					<% }else{  %>
					로그인되어있음.
					<% } %>
					<% if( id == null || pw ==null){ %>
					<input type="checkbox" name="ck" value="true"/>아이디저장
					<input class="btn btn-primary" type="submit" value="로그인"/>
					<% }else{  %>
					<input class="btn btn-primary" type="button" onclick="doLogout();" value="로그아웃"/>
					<%} %>
				</form>
			</div>
		</div>
		<div class="row">
			<iframe width="100%" height="360" src="https://www.youtube.com/embed/_Vz44aMvwjI" 
			frameborder="0" 
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>
</body>
</html>












