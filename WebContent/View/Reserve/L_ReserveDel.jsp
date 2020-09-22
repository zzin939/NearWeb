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
		int reserveno = Integer.parseInt(request.getParameter("reserveno"));
		NearDAO ndao = new NearDAO();
		ndao.deleteReserve(reserveno);
	%>

	<script>
	 alert('정상적으로 삭제되었습니다.');
	 location.href("./Nav/N_MyPage.jsp");
	</script>

</body>
</html>