<%@page import="com.he20o.test.db.DataSelect"%>
<%@page import="com.he20o.test.db.DataInsert"%>
<%@page import="java.util.ArrayList"%>
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
<title>〰️ 스토어 〰️</title>
<%
/* CSS/JS 파일 캐시 방지 */
String styleCss = application.getRealPath("/Home.css");
File style = new File(styleCss);
Date lastModifiedStyle = new Date(style.lastModified());
SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmssSSS");
String styleCss1 = application.getRealPath("buy.css");
File style1 = new File(styleCss1);
Date lastModifiedStyle1 = new Date(style.lastModified());
SimpleDateFormat fmt1 = new SimpleDateFormat("yyyyMMddhhmmssSSS");
%>
<link rel="stylesheet"
	href="/Home.css?ver=<%=fmt.format(lastModifiedStyle)%>">
<link rel="stylesheet"
	href="buy.css?ver=<%=fmt1.format(lastModifiedStyle)%>">

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
				<a href="../Home.jsp"> | HOME</a> <br> <a
					href="../m/Login1.jsp">| 로그인</a> <br> <a href="../m/Join1.jsp">|
					회원가입</a> <br> <a href="../Olympic.jsp"> | 올림픽 정보</a> <br> <a
					href="../Vol.jsp">| 참여하기</a> <br> <a href="../q/Faq.jsp">|
					고객센터</a>

			</div>
		</div>


		<%
					}  else {
					%>

		<div class="dropdown">
			<li class="c"><a href="">[≡메뉴]</a></li>
			<!-- out_menu -->
			<div class="dropdown-content">
				<a href="../Home.jsp"> | HOME</a> <br> <a
					href="../m/Logout.jsp">| 로그아웃</a><br> <a href="../Olympic.jsp">
					| 올림픽 정보</a> <br> <a href="../Vol.jsp">| 참여하기</a> <br> <a
					href="../q/Faq.jsp">| 고객센터</a>

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
					href="Heritage.jsp"> | 💎헤리티지 컬렉션</a> <a href="Collection.jsp">
					| 🏆올림픽컬렉션</a>
			</div>
		</div>

		</ui>
	</nav>
	<div class="goods box">
		<div id="goods_title">
			<h3>〰️ 선택한 굿즈 확인〰️</h3>
		</div>
		<%
				request.setCharacterEncoding("UTF-8");
			String category = request.getParameter("category");
			DataInsert di =  new DataInsert();
			switch(category){
			case "acc":
				String acc[] = request.getParameterValues("acc");
				if(acc != null){
						di.insertGood(acc, "acc");
				}
				break;
			case "collection":
				String collection[] = request.getParameterValues("collection");
				if(collection != null){
						di.insertGood(collection, "collection");
				}
				break;
			
			
			case "heritage":
				String heritage[] = request.getParameterValues("heritage");
				if(heritage  != null){
					di.insertGood(heritage, "heritage");
				}
				break;
				
			case "kids":
				String kids[] = request.getParameterValues("kids");
				if(kids  != null){
					di.insertGood(kids, "kids");
				}
				break;
				
			case "man":
				String man[] = request.getParameterValues("man");
				if(man  != null){
					di.insertGood(man, "man");
				}
				break;
				
			case "woman":
				String woman[] = request.getParameterValues("woman");
				if(woman  != null){
					di.insertGood(woman, "woman");
				}
				break;
					
					
			}
			
			
			DataSelect ds = new DataSelect();
			String wherea = "where acc is not null";
			ArrayList<String> arr1 = ds.dbExecuteQueryStrArr("acc", "goods", wherea);
			
				String r1 = "";
					for(int i = 0; i<arr1.size(); i++){
						r1 = r1 + arr1.get(i) + " ";
					}
					
					
			String wherec = "where collection is not null";
			ArrayList<String> arr2 = ds.dbExecuteQueryStrArr("collection", "goods", wherec);
			
				String r2 = "";
					for(int i = 0; i<arr2.size(); i++){
						r2 = r2 + arr2.get(i) + " ";
					}
				
			String whereh = "where heritage is not null";		
			ArrayList<String> arr3 = ds.dbExecuteQueryStrArr("heritage", "goods", whereh);
			
				String r3 = "";
					for(int i = 0; i<arr3.size(); i++){
						r3 = r3 + arr3.get(i) + " ";
					}
			String wherek = "where kids is not null";			
			ArrayList<String> arr4 = ds.dbExecuteQueryStrArr("kids", "goods", wherek);
			
				String r4 = "";
					for(int i = 0; i<arr4.size(); i++){
						r4 = r4 + arr4.get(i) + " ";
					}
					
			String wherem = "where man is not null";			
			ArrayList<String> arr5 = ds.dbExecuteQueryStrArr("man", "goods", wherem);
			
				String r5 = "";
					for(int i = 0; i<arr5.size(); i++){
						r5 = r5 + arr5.get(i) + " ";
					}
			String wherew = "where woman is not null";			
			ArrayList<String> arr6 = ds.dbExecuteQueryStrArr("woman", "goods", wherew);
			
				String r6 = "";
					for(int i = 0; i<arr6.size(); i++){
						r6 = r6 + arr6.get(i) + " ";
					}
					
					
					
				%>

		<div id="goods">
			<form action="S_payment.jsp">
				<br> 🧣 액세서리<br>

				<%=DataUpdate.name %>님이 선택한 굿즈는 [<%=r1 %>]입니다.<br> <br>
				🏆올림픽컬렉션<br>
				<%=DataUpdate.name %>님이 선택한 굿즈는 [<%=r2 %>]입니다.<br> <br>
				💎헤리티지 컬렉션<br>
				<%=DataUpdate.name %>님이 선택한 굿즈는 [<%=r3 %>]입니다.<br> <br>
				👶🏻키즈<br>
				<%=DataUpdate.name %>님이 선택한 굿즈는 [<%=r4 %>]입니다.<br> <br>
				👨🏻남성<br>
				<%=DataUpdate.name %>님이 선택한 굿즈는 [<%=r5 %>]입니다.<br> <br>
				👩🏻여성<br>
				<%=DataUpdate.name %>님이 선택한 굿즈는 [<%=r6 %>]입니다.<br> 
				
				<input
					type="hidden" name="g_acc" value="<%=r1 %>"> <input
					type="hidden" name="g_collection" value="<%=r2 %>"> <input
					type="hidden" name="g_heritage" value="<%=r3 %>"> <input
					type="hidden" name="g_kids" value="<%=r4 %>"> <input
					type="hidden" name="g_man" value="<%=r5 %>"> <input
					type="hidden" name="g_woman" value="<%=r6 %>"> <br> <br>
				<input type="submit" value="구매하기">

			</form>
		</div>


	</div>

















</body>
</html>