<%@page import="com.he20o.test.db.DataUpdate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제창</title>
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
<%
String a= request.getParameter("g_acc");
String b = request.getParameter("g_collection");
String c = request.getParameter("g_heritage");
String d = request.getParameter("g_kids");
String e = request.getParameter("g_man");
String f = request.getParameter("g_woman");
%>
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
				<a href="../Home.jsp"> | HOME</a> <br> <a href="../m/Login1.jsp">|
					로그인</a> <br> <a href="../m/Join1.jsp">| 회원가입</a> <br> <a
					href="../Olympic.jsp"> | 올림픽 정보</a> <br> <a href="../Vol.jsp">|
					참여하기</a> <br> <a href="../q/Faq.jsp">| 고객센터</a>

			</div>
		</div>


		<%
					}  else {
					%>

		<div class="dropdown">
			<li class="c"><a href="">[≡메뉴]</a></li>
			<!-- out_menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> <a href="../m/Logout.jsp">|
					로그아웃</a><br> <a href="../Olympic.jsp"> | 올림픽 정보</a> <br> <a
					href="../Vol.jsp">| 참여하기</a> <br> <a href="../q/Faq.jsp">|
					고객센터</a>

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
		<li class="e"><a href="">[🛍️상점] </a></li>  <!-- shop -->
		
		<div class="dropdown-content">
		<a href = "Man.jsp"> | 👨🏻남성</a> 
		<a href = "Woman.jsp"> | 👩🏻여성</a> 
		<a href = "Kids.jsp"> | 👶🏻키즈</a> 
		<a href = "Acc.jsp"> | 🧣액세서리</a> 
		<a href = "Heritage.jsp"> | 💎헤리티지 컬렉션</a> 
		<a href = "Collection.jsp"> | 🏆올림픽컬렉션</a> 
		</div>
		</div>

		</ui>
	</nav>
<div class ="card_box">
	<h3>〰️ 신용카드 결제 〰️</h3>
	<div id ="cardinfo">
	<form action="S_result.jsp" method="get">
<input type="hidden" name="acc" value="<%=a %>">
<input type="hidden" name="collection" value="<%=b %>">
<input type="hidden" name="heritage" value="<%=c %>">
<input type="hidden" name="kids" value="<%=d %>">
<input type="hidden" name="man" value="<%=e %>">
<input type="hidden" name="woman" value="<%=f %>">
<br>
		카드사 : <select id="bank" required>
			<option value="선택">선택</option>
			<option value="농협카드">농협카드</option>
			<option value="하나카드">하나카드</option>
			<option value="국민카드">국민카드</option>
			<option value="신한카드">신한카드</option>
			<option value="현대카드">현대카드</option>
			<option value="롯데카드">롯데카드</option>
			<option value="비씨카드">비씨카드</option>
		</select> <br> <br> 
		소유자(영문): <input name="user"> <br><br> 
		카드번호 : <input name="cardnum"> - <input
			name="cardnum"> - <input name="cardnum"> - <input
			name="cardnum"> <br> <br> 
		유효기간 : <select id="month" required>
			<option value="선택">선택</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
		</select>월 
			<select id="year" required>
			<option value="선택">선택</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
		</select>년 <br> <br> 
		할부 : <select id = "instalment" required>
			<option value = "선택">선택</option>
			<option value = "1">일시불</option>
			<option value = "2">2개월</option>
			<option value = "3">3개월</option>
			<option value = "4">4개월</option>
			<option value = "5">5개월</option>
			<option value = "6">6개월</option>
		</select><br><br> 
		비밀번호(2자리) : <input name="secret"> <br><br><hr>
			<br>
		 <input type="submit" value="결제하기">

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