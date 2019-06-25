<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String ch = request.getParameter("ch");
	
	CookieBox cBox = new CookieBox(request);
	
	if(id.length() > 0 && pw.length() > 0 && id != null && pw != null) {
		
		if(id.equals(cBox.getValue("ID")) && pw.equals(cBox.getValue("PW"))) {
			 if(ch == null){
				 Cookie check = CookieBox.createCookie("CHECK", "no", 60*60*24*365);
				 response.addCookie(check);
				 Cookie c = CookieBox.createCookie("ID", id, -1);
				 response.addCookie(c);
				 response.sendRedirect("index.jsp");	
			}else {
				Cookie check = CookieBox.createCookie("CHECK", "yes", 60*60*24*365);
				response.addCookie(check);
				Cookie c = CookieBox.createCookie("ID", id, 60*60*24*365);
				response.addCookie(c);
				response.sendRedirect("index.jsp");
			} 
		}else {
			out.println("<script> alert(\'아이디랑 패스워드를 확인하세요.\'); history.go(-1); </script>");
		}
		
	}

%>
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

	<div id="wrap">
		<%-- header 시작 --%>
		<%@ include file="../../frame/header.jsp"%>
		<%-- header 끝 --%>

		<%-- nav 시작 --%>
		<%@ include file="../../frame/nav2.jsp"%>
		<%-- nav 끝 --%>

		<%-- contents 시작 --%>
		<div id="contents">
			
		</div>
		<%-- contents 끝 --%>

		<%-- footer 시작 --%>
		<%@ include file="../../frame/footer.jsp"%>
		<%-- footer 끝 --%>

	</div>
</body>
</html>