<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Nav.css">
</head>
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<%
	
	NearDAO ndao = new NearDAO();
	MemberBean mbean = ndao.getUserInfo(userid);
	
	%>

	<article class = "mypage">
		
		<section class = "mypage-info">
		
	 		<h2><%=mbean.getUsername() %>님 반갑습니다.</h2>
	 		<%=mbean.getEmail() %> 
			<div><button class = "button" onclick = "location.href='../Member/M_Edit.jsp?userno=<%=mbean.getUserid()%>'">내 정보 수정</button></div>
	
		</section>

 
		<section class = "Mreserve_list">

		<h2>예약목록</h2>
	
		<table class = "Mreserve-table">
		<thead class = "Mreserve-head">
			<tr>
				<td width = "100px;">예약 번호</td> 
				<td width = "300px;">숙소이름</td> 
				<td width = "100px;">예약 날짜</td>
				<td width = "100px;">예약 기간</td> 
				<td width = "100px;">예약 인원</td>
				<td width = "50px;"></td>
			</tr>
		</thead>
		<tbody class = "Mreserve-body">
 		<% 
 		
 		String username = mbean.getUsername();
 		Vector<UserViewBean> vec = ndao.getUserReserve(username);
 		
 		int count = 0;
 		for (int i = 0; i<vec.size(); i++){
 			
 			UserViewBean ubean = vec.get(i);
 		%>
		
			<tr>
				<td><%=ubean.getReserveno() %></td> 
				<td><%=ubean.getNearname() %></td> 
				<td><%=ubean.getReserveday() %></td>
				<td><%=ubean.getReserveterm() %></td> 
				<td><%=ubean.getUsenum() %></td> 
				<td><button class = "button" onclick="location.href='../Reserve/L_Result.jsp?reserveno=<%=ubean.getReserveno() %>'">상세 보기</button>	 
					<button class = "button" onclick="location.href='../Reserve/L_ReserveDel.jsp?reserveno=<%=ubean.getReserveno() %>'">삭제</button>
				</td>
			</tr>
		</tbody>
		<%} %>
		</table>
	
		</section>
	</article>
	
	<%@include file ="../Common/Footer.jsp" %>
	
</body>
</html>