<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
	response.sendError(500, "요청 페이지를 찾을 수 없습니다");
	application.log("로그기록", new Exception());
	%>
</body>
</html>