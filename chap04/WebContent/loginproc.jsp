<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="com.mh.org.db.DBManager"%>
<%
	DBManager dbm = new DBManager();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	out.println("id = "+id);
	out.println("pw = "+pw);
	System.out.println("id = "+id);
	System.out.println("pw = "+pw);
	
	boolean loginTest = dbm.checkLogin(id,pw);
	if(loginTest)
	{
		out.println("로그인성공");
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		System.out.println("일로오나");
	}
	else
	{
		System.out.println("절로오나");
		out.println("로그인 실패");	
	}
	
	String ck = request.getParameter("ck");
	
	if(ck !=null ){
		if(ck.equals("true")){
			Cookie cookie = new Cookie("id",id);
			response.addCookie(cookie);
		}
	}else{
		Cookie cookie = new Cookie("id",id);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
	
	
	response.sendRedirect("index.jsp");
%>


























