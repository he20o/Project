<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action = "/join">
	아 이 디 : <input name = "id" placeholder = "아이디 입력" required>
			<input type = "button" name ="check_id" value = "아이디 확인"><br>
	비밀번호 : <input name = "pw" placeholder = "비밀번호 입력" required><br>
	비밀번호 재입력 :<input name = "re_pw" placeholder = "비밀번호 재입력" required><br>
	이   름 : <input name = "name" placeholder = "이름 입력" required><br>
	이 메 일 : <input name = "email" placeholder = "xxx@email.com" required><br>
	<br><hr>
	<input type = "submit" value = "가입하기">
</form>
</body>
</html>

db에 안넘어감 확인할 것.