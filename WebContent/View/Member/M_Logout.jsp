<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String logout = request.getParameter("logout");

	session.invalidate();
	response.sendRedirect("../Main.jsp");
	
%>
</body>
</html>