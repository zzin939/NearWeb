<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Member.css">
</head>
<script src="../../js/JoinCheck.jsp"></script>
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<%
	request.setCharacterEncoding("UTF-8");
	%>

	<form action = "M_JoinPro.jsp" name = "join" method = "post" 
	onsubmit="return joinmember();">
	
	<p style = "font-size: 24px;"><strong>회원가입</strong></p> 	

	<div class = "form-text">Near의 회원이 되어 가까운 휴양지를 탐색해보세요.<br></div>

	<input class = "typing" type = "text" name="userid" id="userid" placeholder="아이디를 입력해주세요"> <br>
	<input class = "typing" type = "text" name="username" id="username" placeholder="닉네임을 입력해주세요"> <br>
	<input class = "typing" type = "password" name ="password" id="password" placeholder="비밀번호를 입력해주세요"> <br>
	<input class = "typing" type = "password" name = "password1" id="password1" placeholder="비밀번호 확인"> <br>
	<input class = "typing" type = "text" name = "email" id="email" placeholder="이메일을 입력해주세요"> <br>
	<input class = "typing" type = "text" name = "contact" id="contact" placeholder="전화번호를 입력해주세요"> <br>
	
	<input class = "bttn" type = "submit" value="SEND">
	</form>
	

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>