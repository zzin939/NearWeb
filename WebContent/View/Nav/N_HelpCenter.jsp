<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Nav.css">
</head>
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
 	<section class = "helpdesk">
 
 	 <h1>HELP DESK</h1>
  	
  	<ul class = "Helpdesk-List">
 	 <li class = "item">
  		<div class="tit">
  		Q. 예약을 했는데 취소 하고 싶어요.</div>
  		  <div class="hidden">
    	  <div class= "txt">
    	  내 정보 페이지의 하단 예약 내역에서 취소가 가능합니다.<br>
    	  취소하는데 어려움이 있으신가요?<br>
    	 1:1 문의글과 고객센터로 통화주시면 감사드리겠습니다.</div>
    	</div>
	 </li>
	 <li class = "item">
  		<div class="tit">
  		Q. 저도 호스트가 되고 싶어요. 신청하는 방법이 있나요?</div>
  		  <div class="hidden">
    	  <div class= "txt">
    	  내 정보 페이지의 하단 예약 내역에서 취소가 가능합니다.
    	  <br>취소하는데 어려움이 있으신가요?<br>
    	  1:1 문의글과 고객센터로 통화주시면 처리가 가능합니다.</div>
    	</div>
	 </li>
 	<li class = "item">
  		<div class="tit">
  		Q. 갑자기 일정이 변경 됐어요. 예약 변경은 어떻게 하나요?</div>
  		  <div class="hidden">
    	  <div class= "txt">
    	  1:1 문의글이나 고객센터로 연락 주시면 바로 변경이 가능합니다.<br>
    	    내 정보 페이지에서 변경할 수 있도록 서비스 준비 중이니,<br>
    	    앞으로도 많은 이용 부탁드립니다.
    	  </div>
    	</div>
	 </li>
	<li class = "item">
  		<div class="tit">
  		Q. 제가 예약했는데 방문자가 달라요. 이용에 문제는 없나요?</div>
  		  <div class="hidden">
    	  <div class= "txt">  
    	  이용 인원이 추가될 경우에만 호스트에게 연락해주세요!<br>
    	 Near에서 소중한 추억 만드시길 바랍니다.<br>
    	 감사합니다.
    	 </div>
    	</div>
	 </li>
	 <li class = "item">
  		<div class="tit">
  		Q. 예약 취소를 했는데 금액은 언제 환불 처리 되나요?</div>
  		  <div class="hidden">
    	  <div class= "txt"> 
    	   무통장 입금의 경우 4시 이전에 취소했을 경우 당일 환불이 진행되며,
    	  <br>카드 취소의 경우 카드사에 따라 2-3일 정도 소요됩니다.<br>
    	  추가 문의는 1:1 문의글이나 고객센터로 통화 주세요. 감사합니다.</div>
    	</div>
	 </li>
 	 </ul>
 	 </section>
 	 
 	 <br>
 	 
  	<section class = "Help-formlink">
  	
  		<div class = "Help-form">
  			더 자세히 문의할 사항이 있으신가요?<br>
 			<button class = "bttn" onclick="location.href='../Help/N_HelpForm.jsp'">1:1문의</button>
 		</div>
   
   	</section>
   	
	
	<%@include file ="../Common/Footer.jsp" %>
	
</body>
</html>