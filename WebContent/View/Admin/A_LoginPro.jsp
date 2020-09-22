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
		request.setCharacterEncoding("utf-8");
		
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		if(userid.equals("near") && password.equals("near1234")){
		
		session.setAttribute("userid", userid);
		session.setAttribute("password", password);
		response.sendRedirect("A_Main.jsp");
		
	
	}else{%>
	
		<script>
		alert('잘못된 경로입니다.');
		location.href = '../Main.jsp';
		</script>
	
	<% } %>
	

</body>
</html>