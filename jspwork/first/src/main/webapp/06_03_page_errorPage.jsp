<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="06_03_page_errorPage_error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%
	out.print("error test");
	String str = null;
	out.println(str.toString()); //NullPointerException 에러	
	%>
</body>
</html>