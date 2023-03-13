<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<title>Welcome</title>

</head>
<body>
	<%@ include file="17_01_menu.jsp" %>
	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다"; %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>Security</h3>
			<p> 사용자명(username) : <%=request.getRemoteUser() %></p>
			<p> 인증방법 : <%=request.getAuthType() %></p>
			<p> 인증한 사용자명이 역할명 "manager"에 속하는 사용자인가요?
				<%=request.isUserInRole("manager") %>
			</p>
			<p> 인증한 사용자명이 역할명 "user"에 속하는 사용자인가요?
				<%=request.isUserInRole("users") %>
		</div>
	</div>	
	<%@ include file="17_01_footer.jsp" %>	
</body>
</html>