<%@page import="com.he20o.homepage.Selectdao"%>
<%@page import="com.he20o.homepage.Ticketdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String game[]=request.getParameterValues("game");
	String p_game[]=request.getParameterValues("p_game");

	Ticketdto dto = new Ticketdto(game,p_game);   //id 넣어주기
	Selectdao dao = new Selectdao();
	dao.ticket(dto);
	
	response.sendRedirect("t_result.jsp");
%>
</body>
</html>