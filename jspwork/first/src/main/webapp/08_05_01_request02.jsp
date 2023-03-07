<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="08_05_01_request02_process.jsp" method="post">
		<p> 아이디: <input type="number" name="user_id"/></p>
		<p> 이름: <input type="text" name="name" /></p>
<!-- 		<p> 이름 : <input type="text" name="user_name"></p> -->
		<p>취미</p>
		<label><input type="checkbox" name="hobby" value="영화">영화</label>
		<label><input type="checkbox" name="hobby" value="미술">미술</label>
		<label><input type="checkbox" name="hobby" value="운동">운동</label>	
		<label><input type="checkbox" name="hobby" value="여행">여행</label>	
		
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>