<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
<!-- 	property: 멤버 변수명을 의미함. -->
	<jsp:setProperty name="memberBean" property="id" value="2" />
<!-- 	memberBean.setId(2); -->
	<%="아이디: " + memberBean.getId() %><br>
	이름: <jsp:getProperty name="memberBean" property="name" /><br>
</body>
</html>