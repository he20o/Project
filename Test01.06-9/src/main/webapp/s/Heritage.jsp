<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.he20o.test.db.DataUpdate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>〰️ HERITAGE COLLECTION 〰️</title>
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
			<h3>〰️ 헤리티지 컬렉션 〰️</h3>
			<hr>

		</div>

		<div id="goods_select">
			<b>🛍️ 구매를 원하는 굿즈를 담아주세요.(✔️)</b> <br>
		</div>

		<div class="goods">
			<form action="S_buy.jsp">
			<input type="hidden" name="category" value="heritage">
				<div class="ga">
					<div id="ga_1"><br>
						<input type="checkbox" name="heritage"
							value="코스터 하계 게임의 유산 컬렉션 세트"> 코스터 하계 게임의 유산 컬렉션 세트<br>
						<br><img src=s_pic/he_a.jpg><br> <br>
						<hr>
						£54⁰⁰ / 73,000원<br> <br>
					</div>
					<br>
				</div>

				<div class="gb">
					<div id="gb_1">
						<input type="checkbox" name="heritage"
							value="헤리티지 컬렉션 실크 스카프1968 멕시코 도브">헤리티지 컬렉션 실크 스카프1968
						멕시코 도브<br> <br> <img src=s_pic/he_b.jpg> <br>
						<br>
						<hr>
						<br> £55⁰⁰ / 75,000원
					</div>
					<br>
				</div>
				<div class="gc">
					<div id="gc_1">
						<input type="checkbox" name="heritage"
							value="헤리티지 컬렉션 레이크 - 플래시드1980 포스터">헤리티지 컬렉션 레이크 -
						플래시드1980 포스터<br> <br> <img src=s_pic/he_c.jpg><br>
						<br>
						<hr>
						<br> £15⁰⁰ / 21,000원
					</div>

					<br>
				</div>

				<div class="gd">
					<div id="gd_1">

						<input type="checkbox" name="heritage"
							value="헤리티지 컬렉션 로스앤젤레스 1932 포스터 핀 배지"> 헤리티지 컬렉션 로스앤젤레스
						1932 포스터 핀 배지 <br> <br> <img src=s_pic/he_d.jpg><br>
						<br>
						<hr>
						£7⁰⁰ / 10,000원

					</div>
					<br>
				</div>

				<div class="ge">
					<div id="ge_1">
						<input type="checkbox" name="heritage"
							value="헤리티지 컬렉션 비스코스 스카프 생모리츠 1948"> 헤리티지 컬렉션 비스코스 스카프
						생모리츠 1948<br> <br> <img src=s_pic/he_e.jpg><br>
						<br>
						<hr>
						£28⁰⁰ / 38,000원
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