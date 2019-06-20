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
	<h1>Page_a.jsp 에서 만들어진 응답 결과</h1>
	<br>
	no 파라미터의 값 : <%= request.getParameter("no") %><br>
	uname 파라미터의 값 : <%= request.getParameter("uname") %>
</body>
</html>