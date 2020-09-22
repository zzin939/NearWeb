<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<% 
		
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		
		NearDAO ndao = new NearDAO();
		
		int result = ndao.getUserLogin(userid, password);
		
		if(result == 0){
	%>		
			<script>
			alert('아이디와 비밀번호를 확인해주세요.');
			location.href = 'M_Login.jsp';
			</script>
		
	<% 	}else {
			
			session.setAttribute("userid", userid);
			response.sendRedirect("../Main.jsp");

		} %>
				
	
	
</body>
</html>
