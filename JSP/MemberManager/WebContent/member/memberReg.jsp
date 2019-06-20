<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="/mm/css/default.css" rel="stylesheet" type="text/css">
<style>
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<%
		//기존에 있는 request 파일을 utf-8 로 인코딩해준다.
		request.setCharacterEncoding("utf-8");
	
		String userId = request.getParameter("uId");
		String userPw = request.getParameter("uPw");
		String userName = request.getParameter("uName");
		String userPhoto = request.getParameter("uPhoto");
	%>
	<div id="wrap">
		<%-- header 시작 --%>
		<%@ include file="../frame/header.jsp"%>
		<%-- header 끝 --%>

		<%-- nav 시작 --%>
		<%@ include file="../frame/nav.jsp"%>
		<%-- nav 끝 --%>

		<%-- contents 시작 --%>
		<div id="contents">
			<h3>회원가입 요청 페이지</h3>
			<hr>
				<table>
					<tr>
						<td>아 이 디</td>
						<%-- required : 필수사항--%>
						<td><input type="email" name="uId" value="<%= userId %>" required></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="uPw" value="<%= userPw %>" required></td>
					</tr>
					<tr>
						<td>이 름</td>
						<td><input type="text" name="uName" value="<%= userName %>" required></td>
					</tr>
					<tr>
						<td>사 진</td>
						<td><input type="file" value="<%= userPhoto %>" name="uPhoto"></td>
					</tr>
				</table>
		</div>
		<%-- contents 끝 --%>

		<%-- footer 시작 --%>
		<%@ include file="../frame/footer.jsp"%>
		<%-- footer 끝 --%>

	</div>
</body>
</html>