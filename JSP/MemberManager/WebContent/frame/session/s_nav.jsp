<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="nav">
	<ul>
		<%-- <%= request.getContextPath() %> 를 사용하면 포트뒤에 경로를 가져와줌 --%>
		<li><a href="<%= request.getContextPath() %>/session/index.jsp">홈</a></li>
		<li><a href="<%= request.getContextPath() %>/session/login.jsp">로그인</a></li>
		<li><a href="<%= request.getContextPath() %>/session/memberRegForm.jsp">회원가입</a></li>
		<li><a href="<%= request.getContextPath() %>/session/logout.jsp">로그아웃</a></li>
		<li><a href="<%= request.getContextPath() %>/session/memberDel.jsp">회원탈퇴</a></li>
	</ul>
</div>