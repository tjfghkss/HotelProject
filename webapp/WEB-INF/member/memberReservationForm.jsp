<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>

<h3>${sessionScope.loginfo }님의 예약현황</h3>

<form>
	<c:forEach items="${lists}" var="list">
		<div>
			<label for="hname">${list.hname}</label>
			<label for="checkin">${list.checkin }</label> ~
			<label for="checkout">${list.checkout }</label>
			<button>아래로</button>		
		</div>
		
		
		<table>
			<tr>
				<td>숙소명</td>
				<td>숙소주소</td>
				<td>숙소연락처</td>
				<td>결제일자</td>
				<td>예약이름</td>
				<td>예약인원</td>
				<td>방타입</td>
				<td>비용</td>
				<td>요청사항</td>
			</tr>

			<tr>
				<td>${list.h_name }</td>
				<td>${list.h_address1 }</td>
				<td>${list.h_phone }</td>
				<td>${list.o_orderdate }</td>
				<td>${list.o_engname }</td>
				<td>${list.o_people }</td>
			</tr>
		</table>
	</c:forEach>
</form>