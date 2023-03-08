<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="10_03_exception02_02.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 처리</title>
</head>
<body>
	<h2>에러 페이지</h2>
	<%try{%>
		name 파라미터 값: <% out.flush();%><%= request.getParameter("name").toUpperCase() %><br><hr>
	<%}catch(Exception e){%>
	 	에러 내용 찍히는 부분
	<%} %>
</body>
</html>