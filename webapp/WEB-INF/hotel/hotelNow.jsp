<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../common/common.jsp"%>

<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<link href="<c:url value="/css/hotelNow.css" />" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">


<div>header위치</div>
호텔 예약 현황<br>

<div class="total-wrapper">


	<c:forEach items="${hodetail }" var="hotel" varStatus="i">

<table class="listTable">


	<tr>
		<td><i class="material-icons">home</i>${i.count }번</td>

	</tr>
	<tr>

		<td colspan="2" class="h_nameDetail">
		
			<span class="h_typeDetail">${hotel.h_type }</span>&nbsp;&nbsp;${hotel.h_name }
		
		</td>
	</tr>
	<tr>
		<td colspan="2">
		
			주소: ${hotel.h_nation }, ${hotel.h_address1 },${hotel.h_address2 }
		
		</td>
	</tr>
	<tr>
		
		<td colspan="2">
		
			전화번호: ${hotel.h_phone }
		
		</td>
	</tr>
	<tr>
		<td colspan="2">
		
			소개글:${hotel.h_comment }
		
		</td>
	</tr>
	<tr>
		
		
		<td>
		
			<a href="#">수정하기</a>
		
		</td>
		<td>
		
			<a href="#">삭제하기</a>
		
		</td>
	</tr>
</table>


<div class="listOrders">


이 호텔의 예약 내역은 일로 들어옴 
<c:forEach items="${thisRoom }" var="room">
<table>
		<c:if test="${room.hname == hotel.h_name}">
			<tr>
				<td>
					고객 이메일: ${room.oemail }
				</td>
				<td>
					예약 일자: ${room.checkin }~${room.checkout }
				</td>
			</tr>
			<tr>
				<td>
					인원: ${room.people }
				</td>
			</tr>
			<tr>
				<td>
					고객 이메일: ${room.roomtype }
				</td>
			</tr>
			<tr>
				<td>
					결제 금액: ${room.totalprice }
				</td>
			</tr>
			<tr>
				<td>
					요구사항: ${room.comments }
				</td>
			</tr>
			
			<tr>
			<button>예약확인</button>
			</tr>
		</c:if>

</table>
</c:forEach>

</div>



</c:forEach>








</div>