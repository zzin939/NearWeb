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
	int nearno = Integer.parseInt(request.getParameter("nearno"));
	NearDAO ndao = new NearDAO();
	NearListBean nbean = ndao.getOneNearList(nearno);
	%>

	<form class = "info_form" action="L_Reserve.jsp?nearno=<%=nbean.getNearno() %>" method="post" >
	
	<div class = "info_right" style = "position: absolute; font-size : 18px; float : left;">	
	
	<img src="../../Image/<%=nbean.getImg() %>" width = "500px" height = "500px">
	</div>
	
	<div class = "info_left">
	<div class = "info-head"><%=nbean.getNearname() %></div>
	<div class = "info-text"><%=nbean.getNearinfo() %></div><br>
	
	<%=nbean.getNearstate() %> <%=nbean.getNearaddress() %><br>
	수용인원 <%=nbean.getUsepeople() %>명
	<div class = "info_price"><%=nbean.getPrice() %></div>

	<input type="hidden" name="nearno" value="<%=nbean.getNearno() %>">
	<input type="hidden" name="hostinfo" value="<%=nbean.getHostinfo() %>"><br>
	<input class = "info_bttn" type="submit" value="예약하기">
	
	</div>
	
	</form>	

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>