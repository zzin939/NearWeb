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

<script type="text/javascript">
function cal() {
	document.reserve.price.value = parseInt(document.reserve.reserveterm.value) * parseInt(document.reserve.room.value);
   }

function date() {
	document.getElementById('reserveday').value = new Date().toISOString().substring(0, 10);
}
	
</script>
</head>
<body>


	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<%
		
		int nearno = Integer.parseInt(request.getParameter("nearno"));

		NearDAO ndao = new NearDAO();
		NearListBean bean = ndao.getOneNearList(nearno);
		MemberBean mbean = ndao.getUserInfo(userid);
		
		int room = bean.getPrice();
	
	%>
		
		
		<form action = "L_ReservePro.jsp" method = "post" name= "reserve">
	
		<div class = "reserve_info">
		<img src="../../Image/<%=bean.getImg() %> "width = "500px" height = "500px"><br>
		
		</div>
	
		<div class= "reserve_form">
		
		<div class = "form-head"><%=bean.getNearname() %></div><br>
		<div class = "form-text"><%=bean.getHostinfo() %></div>
		
		떠나고 싶은 날짜가 언제인가요?<br>
		<input class = "typing" type = "date" name="reserveday" id="reserveday" min="2020-08-21" onsubmit = "date()"><br><br> 
		얼마간 묵을 예정인가요?<br> 
		<input class = "typing" type = "number" name ="reserveterm" id = "term" onkeyup = "cal()"><br><br>
		함께 떠나는 인원은 몇명인가요?<br>
		<input class = "typing" type = "number" name="usenum" value="usenum"><br><br>

		결제금액<br>
		<input type = "hidden" name = "room" value= "<%=bean.getPrice()%>">
		<input class = "typing" type = "text" name= "price" id = "price" readonly>
		<br>
		<input type = "hidden" name="username" value="<%=mbean.getUsername() %> ">
		<input type = "hidden" name="nearname" value="<%=bean.getNearname() %>">
		<input type = "hidden" name="nearno" value="<%=bean.getNearno() %>">
		<input type = "hidden" name="img" value="<%=bean.getImg() %>">
		<input class = "bttn" type = "submit" value="WANT">
		</div>

		</form>

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>