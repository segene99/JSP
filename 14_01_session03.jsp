<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		String name;
		String value;
		
		//session 안 : "userID" ="admin" , "userPW" = "1234"
		Enumeration en = session.getAttributeNames(); //"userID", "userPW"
		int i = 0;
		
		while(en.hasMoreElements()) {
			i++; //1 ->2
			name = en.nextElement().toString(); //"userID" -> "userPW"
			value = session.getAttribute(name).toString(); 
			//getAttribute("userID") : object 자료형 -> toString() -> "admin"
			//getAttribute("userPW") : object 자료형 -> toString() -> "1234"
			out.println("설정된 세션의 속성 이름 ["+i+"] :" + name + "<br>"); 
			//설정된 세션의 속성 이름 [1] : userID
			//설정된 세션의 속성 이름 [2] : userPW
			out.println("설정된 세션의 석성 값 ["+i+"] :" + value + "<br>"); 
			//설정된 세션의 속성 이름 [2] : admin
			//설정된 세션의 속성 이름 [2] : 1234
			//순서 맘대로
		}
	
	%>
</body>
</html>