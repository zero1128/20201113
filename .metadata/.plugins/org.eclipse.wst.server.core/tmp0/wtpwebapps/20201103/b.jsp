<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input {
		font-size: 30px;
		background-color: blue;
	}
	#aa{
		margin: 30px;
	}
</style>
</head>
<body>
	<button id="abtn">aa</button>
	<form id="frm" action="BMove" method="get">
		a = <input type="text" name="a" id="aa"/><br/>
		b = <input type="text" name="b"/>
		<input type="submit" value="확인"/>
	</form>
</body>
</html>
<script type="text/javascript">
	document.getElementById("abtn").onclick = function(){
		alert("잘되나");
		document.getElementById("frm").submit();
	}
</script>