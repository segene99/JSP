<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %> <!--  * 는 폴더는 못가져옴 -->
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
// 	DefaultFileRenamePolicy() : 이 메서드는 파일이름이 중복될경우 파일명 뒤에 1과 같은 숫자를 붙여 파일 이름을 rename해주는 역할을 한다.
// MultipartRequest(request객체, "파일이 저장될 경로", 파일최대허용용량 , "파일인코딩설정", new DefaultFileRenamePolicy());
// MultipartRequest 는 객체를 생성하자 마자 파일을 바로 업로드한다. 파일을 저장할 경로는 직접 써주기 보다는 톰캣의 내장 객체인 application 객체의 getRealPath() 메서드를 사용하는 것이 좋다
// String savePath = application.getRealPath("파일을 저장할 폴더");
// 예시: String savePath = application.getRealPath("\product");
// MultipartRequest multi = new MultipartRequest(request, savePath);
// 용량: 1024 * 1024 * 5 => 5MB / 1024 * 1024 *1024 * 5 => 5GB

String savePath = "C:\\upload";
File targetDir = new File(savePath); //

// 디렉토리가 없을 경우 생성하기
if(!targetDir.exists()){ //upload 폴더가 있니?라고 물어봄
	targetDir.mkdirs();
}

MultipartRequest multi = new MultipartRequest(request, savePath, 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
// 
//전송된 파일 타입의 파라미터 이름들을 Enumeration타입으로 반환한다.
// Enumeration은 객체타입을 저장하는 것으로서 형변환이 없이 객체 타입을 자유롭게 저장하고 꺼내기 위해서 사용한다.
// MultipartRequest 를 사용하게 되면 톰캣의 request 객체의getParameter 메서트를 이용하여 값을 전달 받지 못한다.
// 따라서 MultipartRequest를 사용하고 값을 전달 받기 위해서는 MultipartRequest 객체의 getParameter 메서드 이용하여 값을 전달받아야 한다. 파일에 대한 정보는 파라미터로 가져올 수가 없다.

Enumeration params = multi.getParameterNames(); //"name" "subject"
while (params.hasMoreElements()) {
	String name = (String) params.nextElement(); //name
	String value = multi.getParameter(name); //subject
	out.println(name + " = " + value + "<br>"); //multi.getParameter("subject")
}
out.println("-----------------------------------<br>");

Enumeration files = multi.getFileNames(); //"filename"
while (files.hasMoreElements()) {
	String name = (String) files.nextElement(); //"filename"
	String original = multi.getOriginalFileName(name); // multi.getOriginalFileName("filename"); 0번째 파일만 인식
	String filename = multi.getFilesystemName(name); // 실제 저장 파일이름 가져옴
	String type = multi.getContentType(name); // 파일의 타입 가져옴
	File file = multi.getFile(name); // 파일 가져오기
	
	out.println("요청 파라미터 이름 : " + name + "<br>");
	out.println("실제 파일 이름 : " +original+ "<br>");
	out.println("저장 파일 이름 : " +filename+ "<br>");
	out.println("파일 콘텐츠 타입 : " +type+ "<br>");

	if (file != null) {
		out.println(" 파일 크기 : " + file.length()); // length() = 파일크기
		out.println("<br>");
	}
	
}
%>
