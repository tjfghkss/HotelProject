<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>




<h3>예약 확인</h3> 
<form action="orderThis.der" method="post">
<input type="hidden" name="oemail" value="${sessionScope.loginfo.m_email }">
<input type="hidden" name="person" value="${adult }">
<table>
   <tr>
   
      <td><input type="hidden" name="hname" value="${room.hname}">${room.hname}</td>
   
   </tr>
   <tr>
   
      <td><input type="hidden" name="checkin" value="${checkin}">체크인:${checkin}</td>
   
   </tr>
   <tr>
   
      <td><input type="hidden" name="checkout" value="${checkout}">체크아웃:${checkout}</td>
   
   </tr>
   <tr>
   
      <td><input type="hidden" name="roomtype" value="${room.r_type}">선택 객실 : ${room.r_type}</td>
   
   </tr>
   <tr>
   
      <td><input type="hidden" name="d" value="">총 숙박기간 :</td>
   
   </tr>
   <tr>
   
      <td><input type="hidden" name="people" value="${people}">총 인원수: ${people}</td>
   
   </tr>
   <tr>
   
      <td><input type="hidden" name="totalprice" value="${totalprice}">금액: ${totalprice}</td>
   
   </tr>
   





</table>

<h3>상세 정보를 입력해 주십시오.</h3>
   <div><input type="text" name="oname" placeholder="성(영문) 이름(영문)"></div>
   
   <h3>별도 요청 사항</h3>

   <p>별도 요청 제공이 보장되지 않습니다. 그러나 숙소 측에서 최선을 다해 준비할 것입니다.<br>
   예약 후에도 별도 요청 사항을 보내실 수 있어요!</p>
   
   <div><textarea name="comments" ></textarea></div>

<h3>결제 방법 선택</h3>

	<form>
		<div>
		<label fot="payment">내 카드</label>
		</div>
		<div>
		<label for="payment"> 다른 결제 수단</label>
		</div>
		<input type="radio" value="신용카드(일반)" name="payment">신용카드(일반)
		<input type="radio" value="신용카드(법인)" name="payment">신용카드(법인)
		<input type="radio" value="실시간계좌이체" name="payment">실시간계좌이체
		<input type="radio" value="무통장입금" name="payment">무통장입금<br>
		<input type="radio" value="휴대폰결제" name="payment">휴대폰결제
		<input type="radio" value="편의점결제" name="payment">편의점결제
		<input type="radio" value="모바일티머니" name="payment">모바일티머니
	
		<table>
			<tr>
				<th scope="row">카드 선택</th>
				<td>
					<ul>
						<li name="cardKindCtl" id="cardKindCtl01" class="selected">
						<a href="#" class="bank_item" onclick="">
						<span class="sp_card ico_kb"></span>KB국민</a></li>
						<li name="cardKindCtl" id="cardKindCtl02">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_samsung"></span>삼성</a></li>
						<li name="cardKindCtl" id="cardKindCtl03">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_hyundae"></span>현대</a></li>
						<li name="cardKindCtl" id="cardKindCtl04">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_sinhan"></span>신한</a></li>
						<li name="cardKindCtl" id="cardKindCtl05">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_lotte"></span>롯데</a></li>
						<li name="cardKindCtl" id="cardKindCtl06">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_nh"></span>NH농협</a></li>
						<li name="cardKindCtl" id="cardKindCtl07">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_woori"></span>우리</a></li>
						<li name="cardKindCtl" id="cardKindCtl08">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_hana"></span>하나</a></li>
						<li name="cardKindCtl" id="cardKindCtl09">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_city"></span>씨티</a></li>
						<li name="cardKindCtl" id="cardKindCtl10">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_sc"></span>SC</a></li>
						<li name="cardKindCtl" id="cardKindCtl11">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_kakao"></span>카카오뱅크</a></li>
						<li name="cardKindCtl" id="cardKindCtl12">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_bc"></span>비씨</a></li>
						<li name="cardKindCtl" id="cardKindCtl13">
						<a href="#" class="bank_item" onclick="" return false;">
						<span class="sp_card ico_etc"></span>기타</a></li>
					</ul>
				</td>
			</tr>
		
		</table>
	</form>

   <input type="submit" value="예약하기">













</form>