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
	<!-- name값을 통해 page.jsp 에 값을 전달한다. -->
	<form action="page.jsp" method="get">
		
		no <input type="text" name="num" value="0">
		name <input type="text" name="userName">
		
		Page Type
		<select name="type">
			<option>선택하세요</option>
			<option value="a">A</option>
			<option value="b">B</option>
			<option value="c">C</option>
		</select>
		<input type="submit" value="보내기">
	</form>	
</body>
</html>