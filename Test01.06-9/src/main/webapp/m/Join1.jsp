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
			<li class="b"><a href="">[≡메뉴]</a></li>  <!-- menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> 
				<a href="Login1.jsp">| 로그인</a> <br> 
				<a href="Join1.jsp">| 회원가입</a> <br> 
				<a href="../Olympic.jsp"> | 올림픽 정보</a> <br> 
				<a href="../Vol.jsp">| 참여하기</a> <br> 
				<a href="../q/Faq.jsp">| 고객센터</a>

			</div>
		</div>



		<%
					}  else {
					%>
					
		<div class="dropdown">
			<li class="c"><a href="">[≡메뉴]</a></li> <!-- out_menu -->
			<div class="dropdown-content">
				<a href = "../Home.jsp"> | HOME</a> <br>
				<a href = "Logout.jsp"> | 로그아웃</a><br>
				<a href = "../Olympic.jsp"> | 올림픽 정보</a> <br>
				<a href = "../Vol.jsp">| 참여하기</a> <br>
				<a href = "../q/Faq.jsp">| 고객센터</a>
		
			</div>
		</div>
		<%
					}
					%>

		<div class="dropdown">
			<li class="d"><a href="">[🎫티켓]</a></li>   <!-- ticket -->
			
			<div class="dropdown-content">
				<a href = "../t/Ticket.jsp"> |티켓 구매하기</a> <br>
				
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
		<div class = "mid">
		</div>
		
	<div class = join_box>
	<div id = join_title>
<h3> Ⓜ️회원가입 </h3>
<br>
</div>
	<div id = join>
<form action ="Join2.jsp" method ="get">
	I  D : <input name = "id" placeholder ="아이디"><br>
	P  W : <input name = "pw" placeholder ="비밀번호"><br>
	Name : <input name ="name" placeholder ="이름"><br>
	<input type ="submit" value ="가입하기">
	
</form></div>
</div>


		<div id ="bottom">
		<hr width="400%" color="brown"></hr>
		<b>| 📞전화번호 :</b> 000-0000-0000
		<b>| 📧이메일 :</b> tickets@contact.paris2024.org
		
		</div>
		

</body>
</html>