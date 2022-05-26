<%@page import="org.apache.tomcat.jni.User"%>
<%@ page import="java.io.*" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO(); //인스턴스생성
		String uID = request.getParameter("uID");
		String uPassword = request.getParameter("uPassword");
		int result = userDAO.login(uID, uPassword);
		//로그인 성공
		if(result == 1){
			response.sendRedirect("Main.html");
			session.setAttribute("uID", uID);
			
		}
		//로그인 실패
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('1.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//아이디 없음
		else if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('2')");
		script.println("history.back()");
		script.println("</script>");
		}
		//DB오류
		else if(result == -2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('3')");
		script.println("history.back()");
		script.println("</script>");
		}		
	%>
</body>
</html>