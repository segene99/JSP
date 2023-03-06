<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>

	<%
	out.print("value of the cariable is:" + data + "<br>"); /*print 브라우저 창에, println 하면 콘솔창에 뜸  */

	String data = "하하하";
	out.print("2_Value of the variable is:" + data);
	%>
	<%!int data = 50;%> <!-- 전역변수여서 자동 초기값 -->
</body>
</html>
