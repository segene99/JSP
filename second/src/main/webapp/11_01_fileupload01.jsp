<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<h2>MultipartRequest를 이용한 파일 업로드</h2>
	<dl>
		<dd>
			- cos.jar파일 필요: <a href="http://www.servlets.com/cos/">다운 받기</a>
		</dd>
	</dl>
	<form name="fileForm" method="post" enctype="multipart/form-data"
		action="11_01_fileupload01_process.jsp">
		<fieldset>
			<legend>파일 업로드 폼</legend>
			<p>
				이름 : <input type="text" name="name">
			</p>
			<p>
				제목 : <input type="text" name="subject">
			</p>
			<p>
				파일 : <input type="file" name="filename" multiple="multiple">
			</p>
			<input type="submit" name="파일 올리기">
		</fieldset>
	</form>
</body>
</html>