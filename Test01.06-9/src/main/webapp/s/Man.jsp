<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.he20o.test.db.DataUpdate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>〰️ MAN 〰️</title>
<%
/* CSS/JS 파일 캐시 방지 */
String styleCss = application.getRealPath("/Home.css");
File style = new File(styleCss);
Date lastModifiedStyle = new Date(style.lastModified());
SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmssSSS");
String styleCss1 = application.getRealPath("Shop.css");
File style1 = new File(styleCss1);
Date lastModifiedStyle1 = new Date(style.lastModified());
SimpleDateFormat fmt1 = new SimpleDateFormat("yyyyMMddhhmmssSSS");
%>
<link rel="stylesheet"
	href="/Home.css?ver=<%=fmt.format(lastModifiedStyle)%>">
<link rel="stylesheet"
	href="Shop.css?ver=<%=fmt1.format(lastModifiedStyle)%>">

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
		if (DataUpdate.loginId.equals("")) {
		%>
		<div class="dropdown">
			<li class="b"><a href="">[≡메뉴]</a></li>
			<!-- menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> <a
					href="../m/Login1.jsp">| 로그인</a> <br> <a href="../m/Join1.jsp">|
					회원가입</a> <br> <a href="../Olympic.jsp"> | 올림픽 정보</a> <br> <a
					href="../Vol.jsp">| 참여하기</a> <br> <a href="../q/Faq.jsp">|
					고객센터</a>

			</div>
		</div>



		<%
		} else {
		%>

		<div class="dropdown">
			<li class="c"><a href="">[≡메뉴]</a></li>
			<!-- out_menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> <a
					href="../m/Logout.jsp"> | 로그아웃</a><br> <a
					href="../Olympic.jsp"> | 올림픽 정보</a> <br> <a href="../Vol.jsp">|
					참여하기</a> <br> <a href="../q/Faq.jsp">| 고객센터</a>

			</div>
		</div>
		<%
		}
		%>

		<div class="dropdown">
			<li class="d"><a href="">[🎫티켓]</a></li>
			<!-- ticket -->

			<div class="dropdown-content">
				<a href="../t/Ticket.jsp"> |티켓 구매하기</a> <br>

			</div>
		</div>
		<div class="dropdown">
			<li class="e"><a href="">[🛍️상점] </a></li>
			<!-- shop -->

			<div class="dropdown-content">
				<a href="Man.jsp"> | 👨🏻남성</a> <a href="Woman.jsp"> | 👩🏻여성</a> <a
					href="Kids.jsp"> | 👶🏻키즈</a> <a href="Acc.jsp"> | 🧣액세서리</a> <a
					href="Heritage.jsp"> | 💎헤리티지 컬렉션</a> <a href="Collection.jsp"> |
					🏆올림픽컬렉션</a>
			</div>
		</div>
		</ui>
	</nav>

	<div class="shop">
		<div id="goods_title">
			<h3>〰️ 남성용 〰️</h3>
			<hr>
		</div>

		<div id="goods_select">
			<b>🛍️ 구매를 원하는 굿즈를 담아주세요.(✔️)</b> <br>
		</div>

		<div class="goods">
			<form action="S_buy.jsp">
			<input type="hidden" name="category" value="man">
				<div class="ga">
					<div id="ga_1">
						<input type="checkbox" name="man" value="파리 2024 올림픽 스몰 로고 그래픽 후디">
						파리 2024 올림픽 스몰 로고 그래픽 후디<br> <br>
						<img src=s_pic/man_a.jpg><br> <br>
						<hr>
						£55⁰⁰ / 75,000원
					</div>
					<br>
				</div>

				<div class="gb">
					<div id="gb_1">
						<input type="checkbox" name="man" value="파리 2024 올림픽 크루 스웨트 - 그레이">파리
						2024 올림픽 크루 스웨트 - 그레이 <br> <br>
						<img src=s_pic/man_b.jpg><br> <br>
						<hr>
						£40⁰⁰ / 55,000원
					</div>
					<br>
				</div>

				<div class="gc">
					<div id="gc_1">
						<input type="checkbox" name="man" value="파리 2024 올림픽 모노크롬 로고 티셔츠">
						파리 2024 올림픽 모노크롬 로고 티셔츠<br> <br>
						<img src=s_pic/man_c.jpg><br> <br>
						<hr>
						£19⁰⁰ / 26,000원
					</div>
					<br>
				</div>

				<div class="gd">
					<div id="gd_1">
						<input type="checkbox" name="man" value="프랑스 올림픽 팀 르꼬끄 티셔츠 - 화이트">
						프랑스 올림픽 팀 르꼬끄 티셔츠 - 화이트<br> <br>
						<img src=s_pic/man_d.jpg><br> <br>
						<hr>
						£33⁰⁰ / 45,000원
					</div>
					<br>
				</div>

				<div class="ge">
					<div id="ge_1">
						<input type="checkbox" name="man" value="프랑스 올림픽 팀 르꼬끄 재킷 - 네이비">
						프랑스 올림픽 팀 르꼬끄 재킷 - 네이비 <br> <br>
						<img src=s_pic/man_e.jpg><br> <br>
						<hr>
						£140⁰⁰ / 190,000원
					</div>
					<br>
				</div>

				<div class="gf">
					<div class="gf_1">
						<button type="submit">선택완료</button>
					</div>
				</div>
			</form>

		</div>
	</div>
	<div id="bottom">
		<hr width="400%" color="brown"></hr>
		<b>| 📞전화번호 :</b> 000-0000-0000 <b>| 📧이메일 :</b>
		tickets@contact.paris2024.org

	</div>


</body>
</html>