<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<%--  <jsp:useBean id="person" class="com.dto.Person" /> --%>
 <jsp:useBean id="person" class="com.dto.Person" scope="request">hello</jsp:useBean>
 <p> 아이디 : <%=person.getId() %> </p>
 <p> 이 름 : <%=person.getName() %> </p>
</body>
</html>