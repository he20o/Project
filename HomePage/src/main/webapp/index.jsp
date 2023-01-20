<%@page import="com.he20o.homepage.Memberdto"%>
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
 Memberdto member = dao.mem("2");
 out.println(member.id);
 out.println(member.pw);
 out.println(member.name);
 
%>


</body>
</html>