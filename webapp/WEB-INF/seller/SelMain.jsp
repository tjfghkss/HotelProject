<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
seller main jsp <br>



<%
String loginfo =(String) session.getAttribute("loginfo");
if(loginfo == null){

%>
<p><a href="#">로그인</a></p> <p><a href="selSignup.sel">회원가입</a></p>
<% } else { %>
Hi

<%} %>



