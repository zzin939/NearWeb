<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Reserve.css">
</head>
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<%
		
		int reserveno = Integer.parseInt(request.getParameter("reserveno"));
		
		NearDAO ndao = new NearDAO();
		ReserveBean rbean = ndao.getOneReserve(reserveno);
		
	%>
	
	<section class = "Result_form" style="position: relative; width:60%; height:500px; padding:10px 0 100px 0; margin : 50px auto;">
	<h2>숙소 예약 내역</h2>
	<hr>
	
	<div class = "reserve_info" style = "position: absolute; width:100%;">
	<img src="../../Image/<%=rbean.getImg() %>" width = "500px" height = "400px"><br>
	
	</div>
	
	<div class= "reserve_form" style = "position: absolute; left:600px; top:30%">
	<div class = "info-head"><%=rbean.getNearname() %></div>

	<div class = "result-text">
	예약 날짜 : <%=rbean.getReserveday() %><br>
	예약 기간 : <%=rbean.getReserveterm() %><br>
	예약 인원 : <%=rbean.getUsenum() %><br><br>
	
	<a href = "L_Info.jsp?nearno=<%=rbean.getNearno() %>"><b>자세한 숙소 정보</b></a>
	<br>
	<button class = "bttn" onclick = "location.href='L_ReserveDel.jsp?reserveno=<%=rbean.getReserveno() %>'">예약취소</button>
	</div>
	</div>
	</section>
	

	

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>