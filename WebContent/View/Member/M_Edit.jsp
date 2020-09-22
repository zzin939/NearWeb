<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel = "stylesheet" type = "text/css" href = "<%=request.getContextPath() %>/css/Member.css">
</head>
<body>

	
	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<%	
	
		NearDAO ndao = new NearDAO();
		MemberBean mbean = ndao.getUserInfo(userid);
	
	%>

		<form action = "M_EditPro.jsp" method = "post">
		
		<p style = "font-size:25px;"><strong>내 정보 수정</strong></p>
	
		<input class = "typing" type = "text" name="userid" value="<%=mbean.getUserid() %>"><br>
		<input class = "typing" type = "password" name ="password" placeholder = "비밀번호"><br>
		<input class = "typing" type = "password" name = "password" placeholder = "비밀번호 확인 "><br>
		<input class = "typing" type = "text" name = "email" value="<%=mbean.getEmail()%>"><br>
		<input class = "typing" type="text" name = "contact" value="<%=mbean.getContact()%>"><br>
		<br>
		<input type="hidden" name="userno" value ="<%=mbean.getUserno() %>"> 
		<input class = "bttn" type = "submit" value="SEND">
		
		</form>
	
	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>