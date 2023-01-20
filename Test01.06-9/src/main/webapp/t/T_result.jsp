<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="com.he20o.test.db.DataInsert"%>
<%@page import="com.he20o.test.db.DataSelect"%>
<%@page import="com.he20o.test.db.DataGetInfo"%>
<%@page import="com.he20o.test.db.DataUpdate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 〰️ 주문내역 확인 〰️ </title>
<%
/* CSS/JS 파일 캐시 방지 */
String styleCss = application.getRealPath("/Home.css");
File style = new File(styleCss);
Date lastModifiedStyle = new Date(style.lastModified());
SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmssSSS");
String styleCss1 = application.getRealPath("Buy.css");
File style1 = new File(styleCss1);
Date lastModifiedStyle1 = new Date(style.lastModified());
SimpleDateFormat fmt1 = new SimpleDateFormat("yyyyMMddhhmmssSSS");
%>
<link rel="stylesheet"
	href="/Home.css?ver=<%=fmt.format(lastModifiedStyle)%>">
<link rel="stylesheet"
	href="Buy.css?ver=<%=fmt1.format(lastModifiedStyle)%>">

</head>
<body>
	<div id="top">
		<h1>
			🗼<i>PARIS 2024</i>🗼
		</h1>
	</div>
	<hr width="100%" color="brown"></hr>




	<nav>
		<ui class="navtop">
		<li class="a"><a href="../Search.jsp">[🔍검색]</a></li>
		<%
					if (DataUpdate.loginId.equals(""))
					{
					%>
		<div class="dropdown">
			<li class="b"><a href="">[≡메뉴]</a></li>
			<!-- menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> 
				<a href="../m/Login1.jsp">| 로그인</a> <br>
				<a href="../m/Join1.jsp">| 회원가입</a> <br> 
				<a href="../Olympic.jsp"> | 올림픽 정보</a> <br> 
				<a href="../Vol.jsp">| 참여하기</a> <br> 
				<a href="../q/Faq.jsp">| 고객센터</a>

			</div>
		</div>


		<%
					}  else {
					%>

		<div class="dropdown">
			<li class="c"><a href="">[≡메뉴]</a></li>
			<!-- out_menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> 
				<a href="../m/Logout.jsp">| 로그아웃</a><br> 
				<a href="../Olympic.jsp"> | 올림픽 정보</a> <br> 
				<a href="../Vol.jsp">| 참여하기</a> <br> 
				<a href="../q/Faq.jsp">| 고객센터</a>

			</div>
		</div>
		<%
					}
					%>
		<div class="dropdown">
			<li class="d"><a href="">[🎫티켓]</a></li>   <!-- ticket -->
			
			<div class="dropdown-content">
				<a href = "Ticket.jsp"> |티켓 구매하기</a> <br>
				
			</div>
		</div>
				<div class="dropdown">
		<li class="e"><a href="">[🛍️상점] </a></li>  <!-- shop -->
		
		<div class="dropdown-content">
		<a href = "../s/Man.jsp"> | 👨🏻남성</a> 
		<a href = "../s/Woman.jsp"> | 👩🏻여성</a> 
		<a href = "../s/Kids.jsp"> | 👶🏻키즈</a> 
		<a href = "../s/Acc.jsp"> | 🧣액세서리</a> 
		<a href = "../s/Heritage.jsp"> | 💎헤리티지 컬렉션</a> 
		<a href = "../s/Collection.jsp"> | 🏆올림픽컬렉션</a> 
		</div>
		</div>

		</ui>
	</nav>

<div class = "ticket_box">
<div id = "ticket_title">
<h3>〰️ 구매한 경기 확인 〰️</h3>
</div>
<%
	String[] game=(String [])session.getAttribute("game");
	String[] pgame=(String [])session.getAttribute("pgame"); 
	
	DataInsert di= new DataInsert();
	di.insertTicket(game,pgame);
	String a = request.getParameter("olym");
	String b = request.getParameter("paralym");
%>


<br>
<div id = "ticket">
🎉 결제가 완료되었습니다!! 🎉<br>
구매한 경기 내역을 확인해주세요.<br>
<br>
<hr>
<%
DataUpdate du = new DataUpdate();

%>

<br>

<form>
☑️ 올림픽 경기<br>
<%=DataUpdate.name %>님이 구매한 올림픽 경기는 [<%=a %>]입니다.
<br><br> 
☑️ 패럴림픽 경기<br>
<%=DataUpdate.name %>님이 구매한 패럴림픽 경기는 [<%=b %>]입니다.
<br>
<br><hr><br>
<input type = "submit" value = "홈으로 이동" formaction = "../Home.jsp">
</form>
</div>
</div>
		<div id ="bottom">
		<hr width="400%" color="brown"></hr>
		<b>| 📞전화번호 :</b> 000-0000-0000
		<b>| 📧이메일 :</b> tickets@contact.paris2024.org
		
		</div>


</body>
</html>