<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit objects</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

		<p>아 이 디 : <%=request.getParameter("id") %></p>
		<p>비밀번호 : <%=request.getParameter("password") %></p>
		<p>비밀번호 재설정 : <%=request.getParameter("passwordre") %></p>
		<p>이름 : <%=request.getParameter("name") %></p>
		<p>생년 : <%=request.getParameter("year") %></p>
		<p>생월 : <%=request.getParameter("mon") %></p>
		<p>생일 : <%=request.getParameter("date") %></p>
		<p>성별 : <%=request.getParameter("gender") %></p>
		<p>이메일 : <%=request.getParameter("email") %></p>
		<p>전화번호 : <%=request.getParameter("cnum") %></p>

</body>
</html>