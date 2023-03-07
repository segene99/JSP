<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String s = request.getParameter("no"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
 <form action="08_06_response01_process.jsp" method="post">
 <p>아이디 : <input type="text" name="id"></p>
  <p>비밀번호 : <input type="text" name="passwd"></p>
  <p> <%= s != null ? "아이디나 비밀번호가 일치하지 않습니다." : "" %></p>
  <p><input type="submit" value="전송"></p>
 </form>
</body>
</html>