<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form creation</title>
</head>
<body>
<!-- 	<form action="08_05_01_formParameter.jsp" method="post"> -->
<form action="08_05_01_formParameter.jsp?id=admin? method="post" accept-charset="utf-8">
	번호: <input type="number" name="num" size="30"><br>
	이름: <input type="text" name="name" size="30"><br>
	주소: <input type="text" name="address" size="30">안양시<br>
	좋아하는 동물:
	<label><input type="checkbox" name="pet" value="dog">강아지</label>
	<label><input type="checkbox" name="pet" value="cat">고양이</label>
	<label><input type="checkbox" name="pet" value="pig">돼지</label>
	<br>
	<input type="submit" value="전송">
	</form>
</body>
</html>