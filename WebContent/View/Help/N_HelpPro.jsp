<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>

	<jsp:useBean id = "hbean" class = "Near.HelpBean">
		<jsp:setProperty name = "hbean" property = "*"/>
	</jsp:useBean> 

	<%
		NearDAO ndao = new NearDAO();
		ndao.insertNearHelp(hbean);		
	%>
	
	<script>
		alert ('문의해주셔서 감사합니다\n 해당 내용의 답변은 이메일로 \n 1~2일 내에 전송됩니다.');
		location.href="../Main.jsp";
		
	</script>
</body>
</html>