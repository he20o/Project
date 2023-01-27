<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="shop">
		<div id="goods_title">
			<h3>〰️ 액세서리 〰️</h3>
			<hr>
		</div>
		<div id="goods_select">
			<b>🛍️ 구매를 원하는 굿즈를 담아주세요.(✔️)</b> <br>
		</div>
		<div class="goods">

			<form action ="S_buy.jsp">
			<input type="hidden" name="category" value="acc">
				<div class="ga">
					<div id="ga_1">
						<input type="checkbox" name="acc"
							value="파리 2024 올림픽 타원형 핀 배지"> 파리 2024 올림픽 타원형 핀 배지<br>
						<br> <img src=/img/acc_a.jpg><br>
						<br>
						<hr>
						£6⁰⁰ / 9,000원<br>
					</div>
					<br>
				</div>
				
				<div class="gb">
					<div id="gb_1">
						<input type="checkbox" name="acc"
							value="파리 2024 올림픽 키링 - 블랙"> 파리 2024 올림픽 키링 - 블랙<br>
						<br> <img src=/img/acc_b.jpg><br>
						<br>
						<hr>
						£7⁰⁰ / 10,000원<br>
					</div>
					<br>
				</div>

				<div class="gc">
					<div id="gc_1">
						<input type="checkbox" name="acc" value="파리 2024 올림픽 핀 배지">
						파리 2024 올림픽 핀 배지<br>
						<br> <img src=/img/acc_c.jpg><br>
						<br>
						<hr>
						£6⁰⁰ / 9,000원<br>
					</div>
					<br>
				</div>
				<div class="gd">
					<div id="gd_1">
						<input type="checkbox" name="acc"
							value="파리 2024 올림픽 마스코트 환영 핀 배지"> 파리 2024 올림픽 마스코트 환영 핀
						배지<br>
						<br> <img src=/img/acc_d.jpg><br>
						<br>
						<hr>
						£6⁰⁰ / 9,000원<br>
					</div>
					<br>
				</div>
				<div class="ge">
					<div id="ge_1">
						<input type="checkbox" name="acc"
							value="파리 2024 올림픽 알레 르 블루 핀 배지"> 파리 2024 올림픽 알레 르 블루 핀
						배지<br>
						<br> <img src=/img/acc_e.jpg><br>
						<br>
						<hr>
						£6⁰⁰ / 9,000원<br>
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
</body>
</html>