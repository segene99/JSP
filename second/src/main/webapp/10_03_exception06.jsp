<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page buffer="1kb" autoFlush="false" %> --%>
<%@ page errorPage = "/error/viewErrorMessage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>buffer flush 이후 에러 발생 결과</title>
</head>
<body>
<% 

String str = null;
str.toUpperCase();

// 	for(int i=0; i<300; i++){
// 		out.println(i);
// 	}

%>
<%= 1/0 %>
</body>
</html>