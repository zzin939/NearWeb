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
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<form action = "M_LoginPro.jsp" method = "post">
	
	<p style = "font-size:20px;"><strong>로그인</strong></p>
	
	<input class = "typing" type = "text" name="userid" placeholder = "아이디"> <br>
	<input class = "typing" type = "password" name ="password" placeholder = "비밀번호"> <br>


	<div class = "form-text">
	아직 회원이 아니신가요?  
	<a href = "M_Join.jsp"><p class = "form-link">Near 회원되기</p></a>
	</div>

	<input class = "bttn" type = "submit" value="SEND">
	</form>
	
	
	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>