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
<title>〰️ 홈 화면 〰️</title>
<%
/* CSS/JS 파일 캐시 방지 */
String styleCss = application.getRealPath("Home.css");
File style = new File(styleCss);
Date lastModifiedStyle = new Date(style.lastModified());
SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmssSSS");
%>
</head>
<link rel="stylesheet"
	href="Home.css?ver=<%=fmt.format(lastModifiedStyle)%>">
<link rel="stylesheet" href="contents.css">
<body>
	<div id="top">
		<h1>
			🗼<i>PARIS 2024</i>🗼
		</h1>
	</div>
	<hr width="100%" color="brown"></hr>

	<nav>
		<ui class="navtop">
		<li class="a"><a href="Search.jsp">[🔍검색]</a></li>
		<%
					if (DataUpdate.loginId.equals(""))
					{
					%>
		<div class="dropdown">
			<li class="b"><a href="">[≡메뉴]</a></li>
			<!-- menu -->
			<div class="dropdown-content">
				<a href="Home.jsp"> | HOME</a> <br> <a href="m/Login1.jsp">|
					로그인</a> <br> <a href="m/Join1.jsp">| 회원가입</a> <br> <a
					href="Olympic.jsp"> | 올림픽 정보</a> <br> <a href="Vol.jsp">|
					참여하기</a> <br> <a href="q/Faq.jsp">| 고객센터</a>

			</div>
		</div>



		<%
					}  else {
					%>

		<div class="dropdown">
			<li class="c"><a href="">[≡메뉴]</a></li>
			<!-- out_menu -->
			<div class="dropdown-content">
				<a href="Home.jsp"> | HOME</a> <br> <a href="m/Logout.jsp">
					| 로그아웃</a><br> <a href="Olympic.jsp"> | 올림픽 정보</a> <br> <a
					href="Vol.jsp">| 참여하기</a> <br> <a href="q/Faq.jsp">| 고객센터</a>

			</div>
		</div>
		<%
					}
					%>

		<div class="dropdown">
			<li class="d"><a href="">[🎫티켓]</a></li>
			<!-- ticket -->

			<div class="dropdown-content">
				<a href="t/Ticket.jsp"> |티켓 구매하기</a> <br>

			</div>
		</div>
		<div class="dropdown">
			<li class="e"><a href="">[🛍️상점] </a></li>
			<!-- shop -->

			<div class="dropdown-content">
				<a href="s/Man.jsp"> | 👨🏻남성</a> <a href="s/Woman.jsp"> |
					👩🏻여성</a> <a href="s/Kids.jsp"> | 👶🏻키즈</a> <a href="s/Acc.jsp">
					| 🧣액세서리</a> <a href="s/Heritage.jsp"> | 💎헤리티지 컬렉션</a> <a
					href="s/Collection.jsp"> | 🏆올림픽컬렉션</a>
			</div>
		</div>
		</ui>
	</nav>

	<div class="box_1">
		<div class="head">
			<form action="Olympic.jsp">
				<input type="submit" name="info" value="🔶 올림픽 정보 🔶      Click!">
				<br>
				<div id="logo">
					<br> <img src="logo1.jpg">
				</div>
			</form>
		</div>

		<div id="info_logo">
		<p>🔸🔹 언제 열려요?</p><br>
		| 2024.07.26 ~ 2024.08.11<br>
		<br>
		<hr>
		<br>
		<p>🔸🔹 정식 종목?</p><br>
		| 28개 종목 / 329개의 경기<br>
		  자세한 내용은 [올림픽 정보]에서..<br>
		  <br>
		  		<hr>
		<br>
		  
		<p>🔸🔹 티켓구매방법 ?</p><br>
		| 추첨제도로 판매<br>
		  자세한 내용은 [올림픽 정보]에서..<br>
		  <br>
		  		<hr>
		<br>
		<p>🔸🔹 파리 올림픽 특징 ?</p><br>
		 | 자세한 내용은 [올림픽 정보]에서..<br>
		  <br>
		  		<hr>
		<br>
		  
		</div>

	</div>
	
<!-- 		<div class="box_2">
		<div class="head">
			<form action="Olympic.jsp">
				<input type="submit" name="info" value="🔶 올림픽 정보 🔶      Click!">
				<br>
				<div id="logo">
					<br> <img src="logo1.jpg">
				</div>
			</form>
		</div>

		<div id="info_logo">
		<p>🔸🔹 언제 열려요?</p><br>
		| 2024.07.26 ~ 2024.08.11<br>
		<br>
		<hr>
		<br>
		<p>🔸🔹 정식 종목?</p><br>
		| 28개 종목 / 329개의 경기<br>
		  자세한 내용은 [올림픽 정보]에서..<br>
		  <br>
		  		<hr>
		<br>
		  
		<p>🔸🔹 티켓구매방법 ?</p><br>
		| 추첨제도로 판매<br>
		  자세한 내용은 [올림픽 정보]에서..<br>
		  <br>
		  		<hr>
		<br>
		<p>🔸🔹 파리 올림픽 특징 ?</p><br>
		 | 자세한 내용은 [올림픽 정보]에서..<br>
		  <br>
		  		<hr>
		<br>
		  
		</div>
	</div>





 -->
	<div id="bottom">
		<hr width="400%" color="brown"></hr>
		<b>| 📞전화번호 :</b> 000-0000-0000 <b>| 📧이메일 :</b>
		tickets@contact.paris2024.org

	</div>

</body>
</html>