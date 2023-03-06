<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, com.dto.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date"/>
<!-- 	Date date = new Date(); -->
	<p><% out.print("today's date and time"); %></p>
	<p><%=date.toLocaleString() %> </p><br><br>
	<hr>
	
	<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
	<%
	
// 	MemberBean memberBean = new MemberBean();
	
	memberBean.setId(1);
	memberBean.setName("Hyojin Kim");
	out.print("id: "+memberBean.getId()+"<br>");
	out.print("name: "+memberBean.getName());
	%>
</body>
</html>