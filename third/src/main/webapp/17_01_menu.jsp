<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
div.navbar-brand {
	margin: auto 0 auto auto !important;
}

div.navbar-brand a {
	text-decoration: none;
	color: #fff;
}
</style>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
	<a class="navbar-brand href="17_01_welcome.jsp">Home</a>
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="#">상품목록</a></li>
	</ul>
	<%-- 	<%if(request.isUserInRole("users") || request.isUserInRole("manager")==true){%> --%>
	<%
	if (request.isUserInRole("users") || request.isUserInRole("manager") == true) {
	%>
	<div class="navbar-brand">
		<a href="17_01_logout.jsp">로그아웃</a>
	</div>
	<%
	} else {
	%>
	<div class="navbar-brand">
		<a href="17_01_login.jsp">로그인</a>
	</div>
	<%
	}
	%>
</nav>