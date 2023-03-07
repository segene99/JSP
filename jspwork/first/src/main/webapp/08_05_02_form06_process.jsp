<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>요청 파라미터 이름</th>
		<th>요청 파라미터 값</th>
	<%
	request.setCharacterEncoding("utf-8");
	Enumeration<String> paramNames = request.getParameterNames(); //name들 가져오기 / "id", "passwd", "phone1", "phone2", "phone3", "gender", "hobby1", "hobby2", "hobby3", "comment"
	while (paramNames.hasMoreElements()) { //데이터 있으면 true, 없으면 false
		String name = paramNames.nextElement(); //커서이동 다음 요소 / "id", "passwd", "phone1", "phone2", "phone3", "gender", "hobby1", "hobby2", "hobby3", "comment"
		out.print("<tr><td>" + name + "</td>\n"); //
		String paramValue = request.getParameter(name); //"id", "passwd", "phone1", "phone2", "phone3", "gender", "hobby1", "hobby2", "hobby3", "comment"
		out.print("<td>" + paramValue + "</td></tr>\n"); // key값에 해당하는 value값 출력
	}
	
	%>	
	
</table>

</body>
</html>