<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>에러 발생이 안됨</h4>
	<% String str=null;
	str.toLowerCase();
	%>
	<%=exception %>
</body>
</html>