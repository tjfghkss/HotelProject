<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>


<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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

.foot {
		text-align : center;
	}

	.companySns {
		clear : both;
	}
	
	.companyInfo2 table {
		width: 100%;
		margin: auto;
		text-algn: center;
	}
	
body{
	background: #333;
}
.cover-card {
	border: 2px solid white;
	background: silver;
	padding: 0px;
	margin: 0px;
	height:200px;
}
.cover-card > p {
	text-align: center;
	background-color: rgba(6,6,6,0.0);
	color: rgba(6,6,6,0.0);
	width: 100%;
	height: 100%;
	font-weight: bold;
	font-size: 20px;
}
.cover-card:hover > p {
	background-color: rgba(6,6,6,0.3);
	color: white;
	text-shadow: 3px 3px 10px #000;
}

.logo {
	width: 100px;
	height: 100px;
}

.adv {
	width: 400px;
	height: 100px;
}
</style>
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<script type="text/javascript">
$(function(){
	
	
	
	
	$('#person').click(function(){
		$('.personbox').toggle();
		
	});
	
	
	
	
	
	
	
	
	
	var i = 0;
	$('#minus').click(function(){
		i--;
		if(i<0){
			
			$('span.adult').append().text(0);
			i = 0;	
			return;
			}
		
		$('span.adult').append().text(i);
		
		$('input.adult').attr('value', i);
		
		
	});
	
	$('#plus').click(function(){
		i++;
		
		$('span.adult').append().text(i);
		
		$('input.adult').attr('value', i);
	});
	
	
	var c = 0;
	$('#cminus').click(function(){
		c--;
		if(c<0){
			
		$('span.child').append().text(0);
		c = 0;	
		return;
			
		}
		
		$('span.child').append().text(c);
		$('input.child').attr('value', i);
	});
	
	$('#cplus').click(function(){
		c++;
		
		$('span.child').append().text(c);
		$('input.child').attr('value', c);
		
	});
	
	var r = 0;
	$('#rminus').click(function(){
		r--;
		if(r<0){
			
		$('span.room').append().text(0);
		r = 0;	
		return;
			
		}		
		$('span.room').append().text(r);
		$('input.room').attr('value', r);
	});
	
	$('#rplus').click(function(){
		r++;
		
		$('span.room').append().text(r);
		$('input.room').attr('value', r);
		
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 $.datepicker.setDefaults({
		 dateFormat: 'yy-mm-dd',
		 showOn: "both"
		,buttonImageOnly: true
		,buttonText: ""
		,minDate: "+1D"
		,maxDate: "+1Y"
		 
	 });
	
	 
	 $('#datepicker').datepicker('setDate', '+1D');
	
	 $("#datepicker").datepicker(); 
	 $("#datepicker2").datepicker();
	 
	 
	 
	
	
});
</script>

<script type="text/javascript">

function login() {
	/* 로그인 팝업 창 사이즈  */
	var popupX = (window.screen.width/2)-(500/2);
	var popupY = (window.screen.height/2)-(500/2);
	/* 로그인 팝업창 function  */
	window.open(	
			'login.mem','_blank','height=500, width=500, toolbar=no, menubar=no, location=no, scrollbars=no, status=no, resizable=no, fullscreen=no, channelmode=yes, left='+ popupX +', top='+ popupY
			); return false
}

function logout() {
	location.href="logout.mem";
	alert("로그아웃 되었습니다");
}

</script>

<meta charset="UTF-8">
<title>Insert title here</title>

<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/css/test.css" />" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">





</head>
<body>

	
	
	    
<header class="main-menu">
		<a href="main.jsp" class="main">
			<img class="logo" src="resources/img/loooo.png"/>
		</a> 
		<c:if test="${sessionScope.loginfo == null }">
			<a class="main-login" href="register.mem" style="float:right; margin:20px;">회원가입</a>
			<a class="main-login" href="#" onclick="login()" style="float:right; margin:20px;">로그인</a>
		</c:if>
		<c:if test="${sessionScope.loginfo != null }">
			<a href="#" onclick="logout()"style="float:right; margin:20px;">로그아웃</a>
			<div class="drop">
				<span>"${sessionScope.loginfo }"</span>
			<div class="drop-content">
				<a href="info.mem" style="float:right; margin:20px;">내 정보</a>
				<a href="reserve.mem" style="float:right; margin:20px;">내 예약 현황</a>
			</div>
			</div>
		</c:if>
	
		<a class="mainright" href="selMain.sel">판매자</a>
	
</header>
	
	

<div class="main-wrapper">
	<div class="searcharea">
	
	<h3>특가 검색 - 다양한 호텔들을 검색해보세요</h3>
	<p>아늑한 펜션부터 모던한 아파트까지!</p>
	
	
	
	
		<form action="Search.ho" method="post">
			<div class="searchinput">
				<i class="material-icons">airplanemode_active</i>
				<input type="text" name="area" placeholder="지역을 입력하세요">
			
				<p class="searcharea-p scheduler"><i class="material-icons">event</i>
				<input name="checkin" type="text" id="datepicker" placeholder="체크인">
				<input name="checkout" type="text" id="datepicker2" placeholder="체크아웃">
				</p>
				
				

			
				<div id="person" class="searcharea-p">&nbsp;<i class="material-icons">face</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;성인&nbsp;:&nbsp;<span class="adult">0</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아동&nbsp;:&nbsp;<span class="child">0</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실&nbsp;:&nbsp;<span class="room" >0</span>&nbsp;</div>
				<input type="hidden" name="adult" class="adult" value="0">
				<input type="hidden" name="child" class="child" value="0">
				<input type="hidden" name="room" class="room" value="0">
				
				
				
				
				
				
				<div class="personbox">
					<div class="perbox-box">
					<div>성인:<input id="minus" class="calc" type="button" value="-"><span class="adult">0</span><input id="plus" class="calc" type="button" value="+"></div>
					<div>아동:<input id="cminus" class="calc" type="button" value="-"><span class="child">0</span><input id="cplus" class="calc" type="button" value="+"></div>
					<div>객실:<input id="rminus" class="calc" type="button" value="-"><span class="room">0</span><input id="rplus" class="calc" type="button" value="+"></div>
					</div>
				</div>

			
				<input class="mainsubmitbtn" type="submit" value="검색">
			
			</div>
		</form>
	</div>
</div>

<div class="container-fluid">
	<!-- <div class="row text-center">
		<h3 style="color:white;font-family:verdana;">main page middle<br><small><a href="#">검색하기</small></h3>
	</div> -->
	<div class="row">
		<div class="cover-card col-sm-4" style="background: url(resources/img/1.jpg) no-repeat center top; background-size:cover;">
			<p>
				Seoul
			</p>
		</div>
		<div class="cover-card col-sm-8" style="background: url(resources/img/2.jpg) no-repeat center top;background-size:cover;">
			<p>
				Oasaka
			</p>
		</div>
		<div class="cover-card col-sm-3" style="background: url(resources/img/3.jpg) no-repeat center top;background-size:cover;">
			<p>
				Hongkong
			</p>
		</div>
		<div class="cover-card col-sm-3" style="background: url(resources/img/4.jpg) no-repeat center top;background-size:cover;">
			<p>
				Shanghai
			</p>
		</div>
		<div class="cover-card col-sm-3" style="background: url(resources/img/5.jpg) no-repeat center top;background-size:cover;">
			<p>
				Paris
			</p>
		</div>
		<div class="cover-card col-sm-3" style="background: url(resources/img/6.jpg) no-repeat center top;background-size:cover;">
			<p>
				London
			</p>
		</div>

		<div class="cover-card col-sm-4" style="background: url(resources/img/7.jpg) no-repeat center top;background-size:cover;">
			<p>
				Busan
			</p>
		</div>
		<div class="cover-card col-sm-4" style="background: url(resources/img/8.jpg) no-repeat center top;background-size:cover;">
			<p>
				Jeju
			</p>
		</div>
		<div class="cover-card col-sm-4" style="background: url(resources/img/9.jpg) no-repeat center top;background-size:cover;">
			<p>
				Makao
			</p>
		</div>
		<div class="cover-card col-sm-6" style="background: url(resources/img/10.jpg) no-repeat center top;background-size:cover;">
			<p>
				Vietnam
			</p>
		</div>
		<div class="cover-card col-sm-6" style="background: url(resources/img/11.jpg) no-repeat center top;background-size:cover;">
			<p>
				NewYork
			</p>
		</div>
	</div>
</div>


<div class="advdiv">
	<img class="adv" src="resources/img/광고.jpg"/>
</div>	

	
	
	
	
	
	
	
	<footer class="modal-footer footer">
	 	
	 		<div class="foot">
		<div class="logo">
			<img class="logo" src="resources/img/loooo.png"/>
		</div>
		
		<div class="companyInfo">
			<strong>
				(주)AAA | 대표이사 : XXX | 사업자 등록번호 : 111-11-11111 | 통신판매업 신고 : 강남-14211호 | 메일 : admin@admin.com<br>
				관광사업자 등록번호 : 제2019-1031호 | 주소 : 이대역 | 호스팅서비스 제공자 : 주식회사 AAA<br>
				고객센터 : 1577-1577 (오전 9시 - 오후 6시)
			</strong>
		</div>
		
		<div class="companyInfo2">
			<table>
				<tr>
					<th><a href="#">회사소개</a></th>
					<th><a href="#">광고&제휴 문의</a></th>
					<th><a href="#">인재채용</a></th>
					<th><a href="#">개인정보처리방침</a></th>
					<th><a href="#">청소년 보호 정책</a></th>
					<th><a href="#">서비스 이용 약관</a></th>
					<th><a href="#">위치정보 이용약관</a></th>
					<th><a href="#">사업자 정보 확인</a></th>
				</tr>
			</table>
		</div>

		<div class="companySns">
			<a href="https://www.facebook.com">FaceBook</a>		
			<a href="https://www.instagram.com">Instagram</a>		
			<a href="https://www.youtube.com">Youtube</a>		
			<a href="https://www.blog.naver.com">Naver Blog</a>		
			<a href="https://www.twitter.com">Twitter</a>		
		</div>
		
		<div class="notice">
			(주) AAA는 통신판매 중개자로서 통신판매의 당사자가 아니며 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.
		</div>
	</div>
		 만든이: 손안우 신서영 윤서호 이병화 
	 </footer>
</body>
</html>