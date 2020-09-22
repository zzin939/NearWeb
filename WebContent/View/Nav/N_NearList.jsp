<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@page import="Near.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 찾기</title>
<link rel = "stylesheet" type = "text/css" href = "<%=request.getContextPath() %>/css/Nav.css">
</head>
<body>

	<header>
		<%@include file ="../Common/Header.jsp" %>
	</header>
	
	<section class = "NList">
		<div class = "List_Banner" style = "float : left; margin : 10px; align :center; padding : 10px; ">
			<a href = "N_NearList.jsp"><img src= "../../Image/banner2.jpg" width="60%" height="500px"></a>
			<a href = "N_NearList.jsp"><img src= "../../Image/banner3.jpg" width="39%" height="500px"></a>
		</div>
	<br><hr><br>
	
	<p style="font-size: 30px; color : gray; text-align : center"><Strong>숙소 목록</Strong></p>
	
	<div class = "List_Product" style = "width : 90%; margin-left: auto;  margin-right: auto;">
	
	<table style = "padding-top : 20px;	" >	
	
		<%
		NearDAO ndao = new NearDAO();
		Vector<NearListBean> v = ndao.getAllList();
	
		int j = 0;
		for(int i = 0; i<v.size(); i++){
			
			NearListBean nbean = v.get(i);
			
			if(j%3==0){
		%>	

		<tr style = "float : left; padding : 10px;">
		
	
		<%	} %>
		<td>
		<a href="../Reserve/L_Info.jsp?nearno=<%=nbean.getNearno() %>">
		<img alt= "" src = "../../Image/<%=nbean.getImg() %>" height = "300px" width = "300px" >
		</a><br>
		<Strong><%=nbean.getNearname() %></Strong><br>
		<%=nbean.getNearstate() %><br>
		</td></tr>		

		<%
			}
		%>
		</table>
		</div>
	</section>
	
	<%@include file ="../Common/Footer.jsp" %>
	
</body>
</html>