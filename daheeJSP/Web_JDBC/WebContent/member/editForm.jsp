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
	<h1>멤버 추가</h1>
	<hr>
	<form action="editEmp.jsp" method="post">
		사원번호 <input type="number" name="empno" required> <br>
		사원이름 <input type="text" name="ename" required> <br>
		<input type="submit" value="수정">
	</form>
</body>
</html>