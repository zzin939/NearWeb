<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Admin.css">

</head>
<body>
	
	<%@include file ="A_Header.jsp" %>


	<section class = "Areserve-list">
	
	<h2>예약 목록</h2>
	<br>
	
	<table class = "Areserve-table">
	
	<thead class = "Areserve-head">
		<tr>
			<td width = "100px;">예약번호</td>
			<td width = "100px;">아이디</td>
			<td width = "300px;">숙소 이름</td>
			<td width = "100px;">예약 날짜</td>
			<td width = "100px;">예약 기간</td>
			<td width = "100px;">예약 인원</td>
			<td width = "50px;"></td>
		</tr>
	</thead>
	

	<% NearDAO ndao = new NearDAO();
	   Vector<ReserveBean> vec = ndao.getAllReserve();
	   
	   for(int i = 0; i<vec.size(); i++){
		   
		   ReserveBean rbean = vec.get(i);
	   %>		
		
	<tbody class = "Areserve-body">
	
		<tr>
			<td><%=rbean.getReserveno() %></td>
			<td><%=rbean.getUsername() %></td>
			<td><%=rbean.getNearname() %></td>
			<td><%=rbean.getReserveday() %></td>
			<td><%=rbean.getReserveterm() %></td>
			<td><%=rbean.getUsenum() %></td>
			<td><button class = "bttn" onclick = "location.href='A_ReserveDel.jsp?Reserveno=<%=rbean.getReserveno() %>'" >삭제</button></td>
		</tr>

	</tbody>
	<% } %>
	</table> 
	</section>


	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>