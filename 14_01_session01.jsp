<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
	if (request.getParameter("no") != null) {
		out.println("<script>alert('세션 설정 실패');</script>");
	}
	%>

	<p>로그인</p>
	<form action="14_01_session01_process.jsp" method="post">
		<p>
			id :<input type="text" name="id">
		</p>
		<p>
			pws :<input type="password" name="passwd">
		</p>
		<p>
			<input type="submit" value="전송">
		</p>
	</form>
</body>
</html>