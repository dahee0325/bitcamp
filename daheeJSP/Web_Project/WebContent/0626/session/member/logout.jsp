<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//현재 세션을 삭제
	session.invalidate();

%>
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
	<h1>로그아웃 되었습니다.</h1>
	<a href="loginCheck.jsp">loginCheck</a><br>
	<a href="login.jsp">login</a>
</body>
</html>