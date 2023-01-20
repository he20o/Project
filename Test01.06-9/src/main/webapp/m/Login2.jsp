<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="com.he20o.test.db.DataUpdate"%>
<%@page import="com.he20o.test.db.DataSelect"%>
<%@page import="com.he20o.test.db.DataGetInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 〰️ 로그인 〰️</title>
<%
/* CSS/JS 파일 캐시 방지 */
String styleCss = application.getRealPath("/Home.css");
File style = new File(styleCss);
Date lastModifiedStyle = new Date(style.lastModified());
SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmssSSS");
%>
<link rel="stylesheet"
	href="/Home.css?ver=<%=fmt.format(lastModifiedStyle)%>">

</head>
<body>
<b>🗼<i>PARIS 2024</i>🗼</b><hr>
<%
	DataGetInfo dgi = new DataGetInfo();
	DataSelect ds = new DataSelect();
	DataUpdate du = new DataUpdate();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int cnt = 0;
	String where = "where id = '"+id+"'";
	cnt = dgi.getCount("member",where);
	
	if(cnt < 1){
		out.println("<script>alert('아이디 다시 확인해주세요.');</script>");
		out.println("<script>location.href = 'Login1.jsp'</script>");
	}else{
		String user_id = ds.dbExecuteQueryStr("id", "member", where);
		String user_pw = ds.dbExecuteQueryStr("pw", "member", where);
		String user_name = ds.dbExecuteQueryStr("user_name", "member", where);
		if(pw.equals(user_pw)) {
			DataUpdate.loginId = user_id;
			DataUpdate.name = user_name;
			out.println("<script>alert('로그인 완료!');</script>");
			out.println("<script>location.href = '../Home.jsp' </script>");
		} else {
			out.println("<script>alert('비밀번호 불일치, 다시 입력해주세요.');</script>");
			out.println("<script>location.href = 'Login1.jsp'</script>");
		}
	}
	
	
%>

</body>
</html>