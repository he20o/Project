<%@page import="com.he20o.homepage.Selectdao"%>
<%@page import="com.he20o.homepage.Memberdto"%>
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
	Memberdto dto = new Memberdto(request.getParameter("id"),
			request.getParameter("pw"),
			request.getParameter("name"));

	Selectdao dao = new Selectdao();
	dao.join(dto);

	
	
%>
</body>
</html>