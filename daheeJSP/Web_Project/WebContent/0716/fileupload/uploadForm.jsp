<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<h1>과제 제출</h1>
	<hr>
	<!--  method="post" enctype="multipart/form-data" 필수★★★★ -->
	<form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
		이름 : <input type="text" name="uName"><br>
		학번 : <input type="text" name="sNumber"><br>
		과제 : <input type="file" name="report"><br>
		<input type="submit" value="업로드">
	</form>
</body>
</html>