<%@page import="com.he20o.homepage.Selectdao"%>
<%@page import="com.he20o.homepage.Ticketdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="ticket_2.jsp">
			<input type="checkbox" name="game" value="펜싱"> 펜싱<br> <input
				type="checkbox" name="game" value="유도"> 유도<br> <input
				type="checkbox" name="game" value="골프"> 골프<br> <input
				type="checkbox" name="game" value="배구"> 배구<br> <input
				type="checkbox" name="game" value="배드민턴"> 배드민턴<br> <input
				type="checkbox" name="game" value="농구"> 농구<br> <input
				type="checkbox" name="game" value="사격"> 사격<br> <input
				type="checkbox" name="game" value="테니스"> 테니스<br> <input
				type="checkbox" name="game" value="양궁"> 양궁<br><br>
			<hr></div>
			
			<div id="pticket_title">
				<b>|🚩패럴림픽 경기</b> 
			</div>
			<div id="pticket">
			<input type="checkbox" name="p_game" value="태권도">태권도<br>
			<input type="checkbox" name="p_game" value="휠체어 펜싱">휠체어 펜싱<br>
			<input type="checkbox" name="p_game" value="휠체어 농구">휠체어 농구<br>
			<input type="checkbox" name="p_game" value="휠체어 럭비">휠체어 럭비<br>
			<input type="checkbox" name="p_game" value="휠체어 테니스">휠체어 테니스<br>
			<input type="checkbox" name="p_game" value="수영">수영<br> <input
				type="checkbox" name="p_game" value="좌식 배구">좌식 배구<br> <input
				type="checkbox" name="p_game" value="유도">유도<br> <input
				type="checkbox" name="p_game" value="양궁">양궁<br>
				</div>
			<div id = "select"	>
		 <input type="submit"
				value="선택내역 확인"> <br>
				</div>
	</form>
</body>
</html>