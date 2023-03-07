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

<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
<jsp:setProperty name="memberBean" property="*"/>
<jsp:setProperty name="memberBean" property="id" param="user_id"/>
<!-- memberBean.setId(request.getParameter("user_Id")); -->
<jsp:setProperty name="memberBean" property="name" param="name"/>
<!-- memberBean.setId(request.getParameter("user_Id")); -->


아이디: <jsp:getProperty name="memberBean" property="id"/><br>
<!-- memberBean.getId(); -->

이름: <jsp:getProperty name="memberBean" property="name"/><br>
<!-- memberBean.getName(); -->

취미: <jsp:getProperty name="memberBean" property="hobby"/><br>
<!-- memberBean.getHobby(); 배열을 돌려줘서 주소값 찍음-->


요청정보 컨텐츠타입 = <%= request.getContentType() %><br>
<small style="color:lime">클라이언트가 전송한 요청 정보(post로 보낸 데이터만)의 컨텐츠 타입을 구함. String으로 반환</small><br>
<%
String[] hobby = memberBean.getHobby();
for(int i=0;i<hobby.length;i++){
	if(hobby[i] != null){
		out.write(hobby[i]);
		if(i != (hobby.length-1)) out.write(", ");
	}else {
		if(i==0) out.write("입력된 취미 정보가 확인되지 않습니다.");
	}
}

%>


</body>
</html>