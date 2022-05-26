<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.apache.tomcat.jni.User" %>
<%@ page import="java.io.*" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="loginstyle.css">
	<title>relay quiz_login</title>
</head>
<body>
	<div class = "wrapper">
  		<form class="modal-content animate" action="loginAction.jsp" method="post">
			<h1>Log In</h1>
			<div class="id">
				<input text="id" id="id" placeholder="아이디" name="uID" required><br>	
			</div>
			<div class="password">
				<input text="password" id="password" placeholder="비밀번호" name="uPassword" required><br><br>
			</div>
			<span class="button">
				<button type="submit" type="button">로그인</button>
			</span>
			<span class="button">
				<button type="button" onclick="location.href='signup.jsp'">회원가입</button>
			</span>
		</form>
		
	</div>

</body>
</html>