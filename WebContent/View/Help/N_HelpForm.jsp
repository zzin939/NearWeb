<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Help.css">
</head>
<body>

	<header>
	<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<%
		NearDAO ndao = new NearDAO();
		MemberBean mbean = ndao.getUserInfo(userid);	
	%>


	<form action = "N_HelpPro.jsp" method = "post">
	<p style = "font-size:20px;"><strong>1:1문의하기</strong></p>

	<input class = "typing" type = "text" name="helptitle" placeholder = "제목"> <br>

	<textarea class = "typing" rows="5" cols="50" name="helpcontent" placeholder = "내용"></textarea> <br>
	<br>
	<input class = "bttn" type = "submit" value="SEND">
	<input type = "hidden" name="username" value="<%=mbean.getUsername() %>">
	<input type = "hidden" name="email" value="<%=mbean.getEmail() %>">
	</form>
	
	
	<%@include file ="../Common/Footer.jsp" %>
	
</body>
</html>