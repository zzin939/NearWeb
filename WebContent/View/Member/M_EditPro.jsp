<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Near.*"%>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% request.setCharacterEncoding("UTF-8");%>

	<jsp:useBean id = "bean" class = "Near.MemberBean">
		<jsp:setProperty name = "bean" property ="*"/>
	</jsp:useBean>

	<%
		NearDAO ndao = new NearDAO();
		ndao.updateMember(bean);
	%>
	
	<script>
	 alert('회원정보가 수정되었습니다.');
	 location.href='./Nav/N_Mypage.jsp';
	</script>

</body>
</html>