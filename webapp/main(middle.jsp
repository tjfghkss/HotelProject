<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
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

</style>
</head>
<body>
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
</body>