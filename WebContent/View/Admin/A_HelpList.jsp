<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Near.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelpList</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Admin.css">
</head>
<body>
	
	<%@include file ="A_Header.jsp" %>
	
	<section class = "Ahelplist">
		<table class = "Ahelplist-table">
	
		<thead class = "Ahelplist-head">
			<tr>
				<td width = "100px;">No.</td>
				<td width = "600px;">Title</td>
				<td width = "150px;">Name</td>
				<td width = "150px;">Date</td>
			</tr>
		</thead>
	
		<tbody class = "Ahelplist-body">		
	<% NearDAO ndao = new NearDAO();
		Vector<HelpBean> vec = ndao.getAllNearHelp();
	
		for(int i=0; i<vec.size(); i++){
			
			HelpBean hbean = vec.get(i);
		
	%>
			<tr>
				<td><%=hbean.getHelpno() %></td>
				<td><%=hbean.getHelptitle() %></td>
				<td><%=hbean.getUsername() %></td>
				<td><%=hbean.getUploaddate() %></td>
			</tr>
			<tr>
				<td colspan = "4"><%=hbean.getHelpcontent() %></td>
			</tr>	
			<tr>
				<td colspan = "3"></td>
				<td><%=hbean.getEmail()%></td>
			</tr>
	<%} %>
		</tbody>

		</table>
	</section>

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>