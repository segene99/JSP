<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Filter</title>
</head>
<body>
	<%
		String name = request.getParameter("name"); //김하늘
		String name1 = (String) request.getAttribute("name"); //김고은
	%>
	<p>	입력된 파라미터 name 값 :<%=name%></p>
	<p>	입력된 속성 name 값 : ${name}</p> <!--김고은 -->
	<p>	입력된 속성 name 값 :<%=name1%></p><!--김고은 -->
</body>
</html>