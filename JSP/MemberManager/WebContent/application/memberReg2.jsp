<%@page import="member.UserInfo"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- usebean 액션 테그를 이용한 객체 생성 ( 찾고 -> 없을 때 생성 )  -->
<jsp:useBean id="userInfo" class="member.UserInfo"/>
<!-- 생성된 객체에 데이터 바인딩 : 폼의 name 속성과 beans 클래스의 변수 이름이 동일해야한다 !!!!!  -->
<jsp:setProperty property="*" name="userInfo"/>
<%
	if(userInfo.getPhoto() == null){
		userInfo.setPhoto("noImg.jpg");
	}
	// 내장객체에 회원정보 객체를 저장
	application.setAttribute(userInfo.getId(), userInfo);
%>

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
	<div id="wrap">
		<%-- header 시작 --%>
		<%@ include file="../frame/member/header.jsp"%>
		<%-- header 끝 --%>

		<%-- nav 시작 --%>
		<%@ include file="../frame/member/nav2.jsp"%>
		<%-- nav 끝 --%>

		<%-- contents 시작 --%>
		<div id="contents">
			<h3>회원가입 요청 페이지</h3>
			<hr>
				<table>
					<tr>
						<td>아 이 디</td>
						<%-- required : 필수사항--%>
						<td><input type="text" name="id" value="<%= userInfo.getId() %>" required></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw" value="<%= userInfo.getPw() %>" required></td>
					</tr>
					<tr>
						<td>이 름</td>
						<td><input type="text" name="name" value="<%= userInfo.getName() %>" required></td>
					</tr>
					<tr>
						<td>사 진</td>
						<td><input type="file" value="<%= userInfo.getPhoto() %>" name="photo"></td>
					</tr>
				</table>
		</div>
		<%-- contents 끝 --%>

		<%-- footer 시작 --%>
		<%@ include file="../frame/member/footer.jsp"%>
		<%-- footer 끝 --%>
	</div>
</body>
</html>