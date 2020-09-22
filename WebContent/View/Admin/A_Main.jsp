<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Vector"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin_Main</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Admin.css">
</head>
<body>

	<%@include file ="A_Header.jsp" %>

	<section class = "a-center" style = "margin:10px;">
	
	<div class = "a-banner1" style = "width : 100%; height : 300px; background-color:white;">
		<p style = "text-align : center; vertical-align : middle; font-size : 20px;"><strong>관리자 페이지</strong></p>	
	</div>
	
	<div class = "a-banner2" style = "width : 100%; height : 400px; background-color: #DEE3E3;">
		<a style = "position : absolute; left : 23%; margin-top:180px;" href="A_HelpList.jsp">고객센터</a>
		<a style = "position : absolute; left : 48%; margin-top:180px;" href="A_NearForm.jsp">숙소등록</a>
		<a style = "position : absolute; left : 73%; margin-top:180px;" href="A_ReserveList.jsp">예약관리</a>
	</div> 
	
	
	</section>
	
	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>