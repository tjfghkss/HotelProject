<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<header>
		<a href="#" class="main" style="float:left; margin:20px;">메인으로</a>
		<a href="#" style="float:right; margin:20px;">로그인</a>
		<a href="#" style="float:right; margin:20px;">회원가입</a>
		<a href="sellermain.jsp" target="blank" style="float:right; margin:20px;">판매자</a>
	</header>
	
	<br>
	<section>
	<form action="Search.ho" method="post" style="margin:80px">
	<p>
		<label for="area">지역</label>
		<input type="text" name="area">
	</p>
	<span>
		<label for="checkin">체크인</label>
		<input type="text" name="checkin">
	</span>
	<span>
		<label for="checkout">체크아웃</label>
		<input type="text" name="checkout">
	</span>
	<p>
		<input type="submit" value="검색">
	</p>
	
	</form>
	</section>
	
</body>
</html>