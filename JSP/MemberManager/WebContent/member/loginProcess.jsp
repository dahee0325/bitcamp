<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="/mm/css/default.css" rel="stylesheet" type="text/css">
<style>
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<%
	String userId = request.getParameter("uId");
	String userPw = request.getParameter("uPw");
	
	if(userId != null && userPw != null && userId.equals("admin") && userPw.equals("admin")){
		
		response.sendRedirect(request.getContextPath());
		
	}
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
			<h3>로그인 요청처리페이지</h3>
			<hr>
				<table>
					<tr>
						<td>아 이 디</td>
						<td><input type="text" name="uId" value="<%= userId %>"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="text" name="uPw" value="<%= userPw %>"></td>
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