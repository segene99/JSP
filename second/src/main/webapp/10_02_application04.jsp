<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name = request.getParameter("abc");
if (name != null) {
	application.setAttribute(name, "orange");
}
%>
<html>
<head>
<title>application 속성 지정</title>
</head>
<body>
	<%
	if (name != null) {
		String str = (String)application.getAttribute(name); //Object 자료형이여서 String 변환 해줘야함
	%>
	application 기본 객체의 속성 설정:
	<%=name%>
	=
	<%=application.getAttribute(name)%>
	<%
	} else {
	%>
	application 기본 객체의 속성 설정 안 함
	<br> 쿼리스트링으로 추가하고 재실행해주세요.
	<br> 추가할 문자열 : ?abc=fruit
	<%
	}
	%>
</body>
</html>