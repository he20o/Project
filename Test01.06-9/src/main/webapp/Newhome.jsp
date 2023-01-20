<%@page import="com.he20o.test.db.DataUpdate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Newhome.css">
</head>

 <style>
a:visited {
	color: black;
}

a:hover {
	color: orange;
}

a:active {
	color: red;
}


 a.tip {


    text-decoration: none

}

a.tip:hover {

    cursor: help;

    position: relative

}

a.tip span {

    display: none

}

a.tip:hover span {

    border: #c0c0c0 1px dotted;

    padding: 5px 20px 5px 5px;

    display: block;

    z-index: 100;

    background:  #f0f0f0 no-repeat 100% 5%;

    left: 0px;

    margin: 10px;

    width: 1000px;

    position: absolute;

    top: 10px;

    text-decoration: none;
    
    font-size : 0.5em;

}

 </style>


<div class="year">
	<a href = "Home.jsp" class ="tip">2&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;4
	<span>home으로 이동</span></a><hr>
</div>

<div class="paris">
	<hr>
	P&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;R&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;S
	<hr>
</div>
<!-- ***paris -->

<br>
<div class="olympic">
	<hr>
	O&nbsp;&nbsp;L&nbsp;&nbsp;Y&nbsp;&nbsp;M&nbsp;&nbsp;P&nbsp;&nbsp;I&nbsp;&nbsp;C



</div>
<!-- ***olympic -->

<div id="bottom">
	<hr width="400%"></hr>
	<b>| 📞전화번호 :</b> 000-0000-0000 <b>| 📧이메일 :</b>
	tickets@contact.paris2024.org

</div>


</body>
</html>