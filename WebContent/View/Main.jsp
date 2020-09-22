<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NearMain</title>
<link rel = "stylesheet" href="<%=request.getContextPath() %>/css/Main.css" type ="text/css" >
</head>
<body>
	
	<header>
	<%@include file ="Common/Header.jsp" %>
	</header>

	<article id = "center">
		
		<section class = "center-top">
	
		<a class = "center-linkhelp" href = "Nav/N_HelpCenter.jsp">
		고객센터
		</a>
		
		
		
		<a class = "center-linklist" href = "Nav/N_NearList.jsp">
		숙소찾기
		</a>
		
		</section>
	
		<section class = "center-middle" >

		<div class = "middle-sixgrid">		
			
			<div class = "grid-top">
			<a href="Nav/N_NearList.jsp"><img class = "grid" src = "../Image/banner1.jpg"></a>
			<a href="Nav/N_NearList.jsp"><img class = "grid" src = "../Image/banner2.jpg"></a>
			<a href="Nav/N_NearList.jsp"><img class = "grid" src = "../Image/banner3.jpg"></a>
			</div>
			
			<div class = "grid-bottom">
			<a href="Nav/N_NearList.jsp"><img class = "grid" src = "../Image/banner4.jpg"></a>
			<a href="Nav/N_NearList.jsp"><img class = "grid" src = "../Image/banner5.jpg"></a>
			<a href="Nav/N_NearList.jsp"><img class = "grid" src = "../Image/banner6.jpg"></a>
			</div>		
		</div>
	
		<div class = "middle-nearinfo">
			<a href="Nav/N_NearList.jsp"><img src = "../Image/banner8.jpg" width = "100%" height= "505px"></a>
		</div>
		
		</section>

	</article>

	<%@include file ="Common/Footer.jsp" %>

</body>
</html>