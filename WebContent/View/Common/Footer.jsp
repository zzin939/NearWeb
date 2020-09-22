<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
</head>
<body>

	<footer>
	
	<table class = "footer-table">
	<tr>
	<td class = "footer-td" width = "200px">
		Contect Us<br>
		Near@email.com</td>

	<td class = "footer-td" width = "300px">
		Address<br>
		경기도 @@시 @@동
		031-***-****</td>

	<td class = "footer-td" width = "200px">
		Near<br>
		<a href ="<%=request.getContextPath() %>/View/Common/NearInfo.jsp">소개</a></td>

	<td class = "footer-td" width = "200px">
		호스트가 되어 보세요<br>
		<a href = "<%=request.getContextPath() %>/View/Common/HostInfo.jsp">[문의]</a></td>
	
	<td class = "footer-admin">
		<a href = "<%=request.getContextPath() %>/View/Admin/A_Login.jsp">관리자 로그인</a></td>
	</tr>
	</table>
	
	</footer>
	
</body>
</html>