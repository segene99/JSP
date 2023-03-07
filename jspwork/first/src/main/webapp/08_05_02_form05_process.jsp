<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<% 
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");
String phone1 =request.getParameter("phone1");
String phone2 =request.getParameter("phone2");
String phone3 =request.getParameter("phone3");
String gender =request.getParameter("gender");
String[] hobby =request.getParameterValues("hobby");
String comment =request.getParameter("comment").replace("\n","<br>");


%>

<p>아이디 : <%=id %></p>
<p>비밀번호 : <%=passwd %></p>
<p>이름 : <%=name %></p>
<p>전화번호 : <%=phone1 + phone2+ phone3 %></p>
<p>성별 : <%=gender %></p>
<p>취미1 : <% 
	if(hobby != null) {
		for(int i=0; i<hobby.length; i++) {
			out.print(" " + hobby[i]);
		}
	}else {
		out.print("취미 선택 안함.");
	}
%></p>
<p>가입인사 : <%= comment %></p>

</body>
</html>