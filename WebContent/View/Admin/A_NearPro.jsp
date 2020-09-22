<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
	<%
	
	request.setCharacterEncoding("UTF-8");
	
	%>

	<jsp:useBean id = "nbean" class = "Near.NearListBean">
		<jsp:setProperty name = "nbean" property = "*"/>
	</jsp:useBean>

	<%
		NearDAO ndao = new NearDAO();
		ndao.insertNearList(nbean);
	%>
	
	<script>
	
		alert('정상적으로 등록되었습니다.');
		location.href="A_Main.jsp";
	</script>

</body>
</html>