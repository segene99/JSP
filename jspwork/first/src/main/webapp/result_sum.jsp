<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	 int a = 2;
	 int b = 3;
	%>
	<%@ include file="result_method.jsp"%>
	<%= sum(a, b) + "<br>" %>
	
</body>
</html>