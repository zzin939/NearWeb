<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Near.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<% request.setCharacterEncoding("UTF-8");
	
		%>

		<jsp:useBean id="rbean" class="Near.ReserveBean">
			<jsp:setProperty name = "rbean" property = "*"/>
		</jsp:useBean>
		
		<%

			NearDAO ndao = new NearDAO();
			ndao.insertReserve(rbean);
	
			
		%>
		
		<script>
		alert('예약 해주셔서 감사합니다.');
		location.href="../Nav/N_NearList.jsp";
		</script>
		
</body>
</html>