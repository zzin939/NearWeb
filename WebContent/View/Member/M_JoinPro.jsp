<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	request.setCharacterEncoding("UTF-8");
	
	%>

	<jsp:useBean id = "mbean" class = "Near.MemberBean">
		<jsp:setProperty name = "mbean" property = "*"/>
	</jsp:useBean>

	<%
		NearDAO ndao = new NearDAO();
		ndao.insertMember(mbean);
	%>
	
	<script>
		alert('회원가입이 완료 되었습니다.');
		location.href="../Main.jsp";
	</script>

</body>
</html>