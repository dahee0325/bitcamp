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
<%
	String path = "/img/mini1.jpg";
%>
자원의 실제 경로 : <%= application.getRealPath(path) %>
</body>
</html>