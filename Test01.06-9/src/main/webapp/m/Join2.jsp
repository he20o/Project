<%@page import="com.he20o.test.db.DataSelect"%>
<%@page import="com.he20o.test.db.DataGetInfo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="com.he20o.test.db.DataUpdate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>〰️ 회원가입 〰️</title>
<%
/* CSS/JS 파일 캐시 방지 */
String styleCss = application.getRealPath("/Home.css");
File style = new File(styleCss);
Date lastModifiedStyle = new Date(style.lastModified());
SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmssSSS");
String styleCss1 = application.getRealPath("Join.css");
File style1 = new File(styleCss1);
Date lastModifiedStyle1 = new Date(style.lastModified());
SimpleDateFormat fmt1 = new SimpleDateFormat("yyyyMMddhhmmssSSS");
%>
<link rel="stylesheet"
	href="/Home.css?ver=<%=fmt.format(lastModifiedStyle)%>">
<link rel="stylesheet"
	href="Join.css?ver=<%=fmt1.format(lastModifiedStyle)%>">

</head>
<body>
<b>🗼<i>PARIS 2024</i>🗼</b><hr>

<%
	DataUpdate du = new DataUpdate();
	DataGetInfo dgi = new DataGetInfo();
	DataSelect ds = new DataSelect();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	du.joinMember(id,pw,name);
	
	response.sendRedirect("Login1.jsp");
	
	
	
	
%>
</body>
</html>