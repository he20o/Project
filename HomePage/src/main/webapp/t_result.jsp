<%@page import="com.he20o.homepage.Ticketdto"%>
<%@page import="com.he20o.homepage.Selectdao"%>
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
	Selectdao dao = new Selectdao();
	
Ticketdto dto= dao.result("19");
%>
올림픽:<%=dto.g %>
패럴림픽 :<%=dto.pg %>
</body>
</html>

<!-- no 대신 id로 가져오기  -->