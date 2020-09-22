<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import = "java.util.*" %>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 페이지</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Nav.css">
</head>
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<section class = "Event-top" >

		<a href="N_NearList.jsp"><img src= "../../Image/banner1.jpg" width ="59%" height = "600px"></a> 
		<a href="N_NearList.jsp"><img src= "../../Image/banner2.jpg" width = "39%" height = "600px"></a> 


	<div class = "Event-middle">
		<a href="N_NearList.jsp"><img src= "../../Image/banner3.jpg" width ="99%" height = "600px"></a> 
	</div>	
	
	</section>	
	
	<%@include file ="../Common/Footer.jsp" %>
	
</body>
</html>