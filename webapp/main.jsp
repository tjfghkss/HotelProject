<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.drop {
	position: relative;
	display: inline-block;
	float: right;
	margin: 20px;
}

.drop-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.drop-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.drop-content a:hover {background-color: #f1f1f1}

.drop:hover .drop-content {
  display: block;
}

.drop:hover .drop span {
  background-color: #3e8e41;
}
</style>
<script type="text/javascript">

function login() {
	var popupX = (window.screen.width/2)-(500/2);
	var popupY = (window.screen.height/2)-(500/2);
	
	window.open(	
			'login.mem','_blank','height=500, width=500, toolbar=no, menubar=no, location=no, scrollbars=no, status=no, resizable=no, fullscreen=no, channelmode=yes, left='+ popupX +', top='+ popupY
			); return false
}

function logout() {
	location.href="logout.mem";
	alert("로그아웃 되었습니다");
}

</script>

</head>
<body>
	<header>
		<a href="#" class="main" style="float: left; margin: 20px;">메인으로</a>
		<c:if test="${sessionScope.loginfo == null }">
			<a href="register.mem" style="float: right; margin: 20px;">회원가입</a>
			<a href="#" onclick="login()" style="float: right; margin: 20px;">로그인</a>
			<!-- <a href="login.mem" style="float: right; margin: 20px;">로그인</a> -->
		</c:if>
		<c:if test="${sessionScope.loginfo != null }">
				<a href="#" onclick="logout()" style="float: right; margin: 20px;">로그아웃</a>
			<div class="drop">
				<span>"${sessionScope.loginfo }"</span>
				<div class="drop-content">
					<a href="info.mem">내 정보</a> 
					<a href="">내 예약 현황</a>
				</div>
			</div>
		</c:if>
		<a href="#" style="float: right; margin: 20px;">판매자</a>
	</header>

	<br>
	<section>
		<form action="Search.ho" method="post" style="margin: 80px">
			<p>
				<label for="area">지역</label> <input type="text" name="area">
			</p>
			<span> <label for="checkin">체크인</label> <input type="text"
				name="checkin">
			</span> <span> <label for="checkout">체크아웃</label> <input type="text"
				name="checkout">
			</span>
			<p>
				<input type="submit" value="검색">
			</p>

		</form>
	</section>

</body>
</html>