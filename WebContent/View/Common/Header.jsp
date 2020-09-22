<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "Near.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>



	<a href="<%=request.getContextPath() %>/View/Main.jsp" class= "icon">
	<img src="<%=request.getContextPath() %>/Image/Logo.jpg" width = "90%;" height = "90%;"></a>
	
	<% 
	String userid = (String)session.getAttribute("userid");

	if (userid == null){
	%>
	
	<header id = "header">
	
	

	<ul class = "nav">
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_NearList.jsp">숙소찾기</a>
		</li>
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_Event.jsp">이벤트</a>
		</li>
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_HelpCenter.jsp">고객센터</a>
		</li>
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Member/M_Join.jsp">회원가입</a>
		</li>
		<li class = "nav-list">
			<div style = "border : 1px solid; text-size : 15px;">
			<a href = "<%=request.getContextPath() %>/View/Member/M_Login.jsp">Let`s Start!</a>
			</div>
		</li>
	</ul>

	<% }else{ %>
	
	<ul class = "nav">
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_NearList.jsp">숙소찾기</a>
		</li>
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_Event.jsp">이벤트</a>
		</li>
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_HelpCenter.jsp">고객센터</a>
		</li>
		<li class = "nav-list">
			<a href = "<%=request.getContextPath() %>/View/Nav/N_MyPage.jsp">내정보</a>
		</li>
		<li class = "nav-list">
			<%=userid %>님<br>
			<a href = "<%=request.getContextPath() %>/View/Member/M_Logout.jsp">로그아웃 </a>
		</li><!-- userid 하단에 내정보-로그아웃 지정 -->
	</ul>	
	
	<% } %>
	</header>
</body>
</html>