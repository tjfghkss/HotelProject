<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>

<script src="https://code.jquery.com/jquery-latest.js"></script>


<script type="text/javascript">
/* 	$(function() {
		$('#reviewComplete').hide();
	})
 */
	function pushLayer() {
		$('#myModal').show();
	}

	function review() {
		/* var formData = $("#myModal").serialize(); */
		
		$.ajax({
			cache : false,
			url : "review.mem",
			type : "POST",
			data : { "o_num" : $("#o_num").val(),
				"h_num" : $("#h_num").val(),
				"c_comment" : $("#c_comment").val(),
				"c_star" : $("#c_star").val()},
			success : function(data) {
				alert("후기 작성완료");
				$('#myModal').hide();
				location.reload();
/* 				
				$('#review').hide();
				$('#reviewComplete').show(); */

			},
			error : function(data) {
				alert("후기작성 오류");
			}
		});
	}
	
	
	//팝업 Close 기능
	function close_pop(flag) {
		$('#myModal').hide();
	};

	
	
	
</script>
<style>

/* The Modal (background) */
.myModal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}

body {
	margin: 0;
	padding: 0;
}

h4 {
	display: inline-block;
	font-size: 30px;
	margin: 0 10px;
}

.total-container {
	width: 80%;
	margin: 10px auto;
}

.bigtitle {
	width: 100%;
	text-align: center;
}

.table-wrapper {
	border: 1px solid gray;
	border-radius: 5px;
	width: 95%;
	margin: 10px auto;
}

.table-wrapper:hover {
	background: #adc2ff40;
}

.hoteltype {
	background: #bdbdbd;
	padding: 3px;
	font-size: 13px;
	border-radius: 5px;
}

.totitle {
	text-decoration: none;
	color: black;
}

.totitle:visited, .totitle:link {
	text-decoration: none;
}

.totitle:hover, .totitle:active {
	text-decoration: none;
	color: #ec6200;
}

.waitcheckin {
	background: #028602de;
	color: white;
	font-size: 17px;
	padding: 1px;
	border-radius: 5px;
}

.button {
	border: none;
	border-radius: 5px;
	float: right;
	background: #969696;
	color: white;
	padding: 3px;
}
</style>

<div class="total-container" id="total-container">
	<h2 class="bigtitle">예약 조회</h2>
	<hr>



	<c:set var="ho" value="${totalOrder.list[0].hotel }" />
	<c:set var="ro" value="${totalOrder.list[1].room }" />
	<c:set var="od" value="${totalOrder.list[2].odetail }" />
	
	<c:forEach items="${mainOrderd }" var="mo">
		<c:set var="loop_flag" value="false" />
		<table class="table-wrapper">
			<tr>
				<td><c:if test="${mo.o_checker == 0}">
						<span class="waitcheckin">예약확정</span>
					</c:if> <c:if test="${mo.o_checker == 1}">숙박완료</c:if></td>
			</tr>
			<c:forEach begin="0" end="${od.size()-1 }" var="i">
				<c:if test="${mo.o_num==od[i].o_num }">
					<c:forEach begin="0" end="${ro.size()-1 }" var="j">
						<c:if test="${ro[j].r_num==od[i].r_num }">
							<c:forEach begin="0" end="${ho.size()-1 }" var="k">
								<c:if test="${not loop_flag }">
									<c:if test="${ho[k].h_num==ro[j].h_num}">
										<tr>
											<td><span class="hoteltype">${ho[k].h_type }</span>
												<h4>
												<input type="hidden" name="h_num" class="h_num" id="h_num"
					value="${ho[k].h_num }">
													<a class="totitle"
														href="hotelDetail.ho?h_num=${ho[k].h_num }">${ho[k].h_name }</a>
												</h4></td>
										</tr>
										<tr>
											<td>예약 일자 : ${mo.o_checkin } ~ ${mo.o_checkout  }</td>
										</tr>
										<c:set var="loop_flag" value="true" />
									</c:if>
								</c:if>
							</c:forEach>

							<tr>
								<td>예약한 방 종류 : ${ro[j].r_type }&nbsp;&nbsp;&nbsp;
									${od[i].o_count   } 개</td>
							</tr>

						</c:if>
					</c:forEach>
				</c:if>
			</c:forEach>
			<tr>
				<td>영문 이름 : ${mo.o_engname }</td>
			</tr>
			<tr>
				<td>요구 사항 : ${mo.o_comment }</td>
			</tr>
			<tr>
				<td>결제일자 : ${mo.o_orderdate }</td>
			</tr>
			<tr>
				<td>
					<c:if test="${mo.o_checker == 0}">
						<button class="button" type="button" id="cancel">결제취소</button>
					</c:if> 
					
					<c:if test="${mo.o_checker == 1}">
						<c:if test="${mo.o_reviewchecker == 0 }">
							<button class="review" type="button" id="review"
							onclick="pushLayer()">후기쓰기</button>
						</c:if>
						<c:if test="${mo.o_reviewchecker == 1 }">
							<button class="reviewComplete" type="button" id="reviewComplete">후기
							작성 완료</button>
						</c:if>
					</c:if>
				</td>
			</tr>
		</table>
		<div id="myModal" class="myModal">
			<div class="modal-content">
				<input type="hidden" name="o_num" class="o_num" id="o_num"
					value="${mo.o_num }">
				
				<div class="col-md-12 text-center">
					<h1>Review</h1>
				</div>
				<form name="reviewForm" id="reviewForm">
					<div class="form-group">
						<label for="c_star">평점</label> <input type="text" name="c_star"
							class="c_star" id="c_star"> / 5
					</div>
					<div class="form-group">
						<label for="c_comment">후기</label> <input type="text"
							name="c_comment" id="c_comment" class="c_comment">
					</div>
					<div class="submit">
						<button class="review" type="button" id="reviewbtn"
							onclick="review()">작성하기</button>
					</div>
					<div
						style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
						onClick="close_pop();">
						<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
					</div>
				</form>
			</div>
		</div>
	</c:forEach>





</div>