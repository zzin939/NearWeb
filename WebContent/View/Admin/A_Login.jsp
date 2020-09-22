<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Admin.css">
</head>
<body>
	
	<%@include file ="A_Header.jsp" %>

	<form action = "A_LoginPro.jsp" method="post">
	<br>
	<p style = "font-size:25px;"><strong>관리자 로그인</strong></p> 	
	<input class = "typing" type = "text" name="userid" placeholder = "아이디"> <br>
	<input class = "typing" type = "password" name ="password" placeholder = "비밀번호"> <br>
	<br>
	
	<input class = "bttn" type = "submit" value="SEND">
	</form>

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>