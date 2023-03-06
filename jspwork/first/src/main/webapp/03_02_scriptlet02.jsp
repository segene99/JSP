<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
	width: 50%
}

td {
	border: 1px solid #000;
}
</style>
</head>
<body>
	<%
	for (int i = 0; i <= 10; i++) {
		if (i % 2 == 0)
			out.println(i + "<br>");
	}
	%>
	<table>
		<tr>
			<td>번호</td>
			<td>내용</td>
			<td>날짜</td>
		</tr>
		<%
		for (int i = 1; i <= 10; i++) {
		%>
		<tr>
			<td>
				<%
				out.print(1);
				%>
			</td>
			<td>1</td>
			<td>2023-03-06</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
