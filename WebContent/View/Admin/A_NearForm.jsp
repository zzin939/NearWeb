<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 등록</title>
<link rel = "stylesheet" type = "text/css" href = "../../css/Admin.css">
</head>
<body>
	
	<%@include file ="A_Header.jsp" %>

	<form action = "A_NearPro.jsp" method = "post" name = "NearForm" onsubmit = "CheckForm();">
	<p style = "font-size:25px;"><strong>숙소 등록</strong></p> 	

	<input class = "typing" type = "text" name="nearname" placeholder = "숙소이름 "><br>
	<input class = "typing-state" type = "text" name ="nearstate" placeholder = "시"><br>
	<input class = "typing-address" type = "text" name ="nearaddress" placeholder = "나머지 주소 "><br>
	<input class = "typing" type = "number" name = "usepeople" placeholder = "수용인원 "><br> 
	<input class = "typing" class = "typing"type = "number" name="price" placeholder = "금액"><br>
	<input class = "typing" type ="text" name ="img" placeholder = "이미지 파일 주소"><br>
	<input class = "typing" type = "text" name = "nearinfo" placeholder = "숙소정보 "><br> 
	<input class = "typing" type="text" name = "hostinfo" placeholder = "호스트 메세지 "><br> 

	<input class = "bttn" type = "submit" value="SEND">
	</form>

	<%@include file ="../Common/Footer.jsp" %>

</body>
</html>