<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
<link rel="stylesheet" type="text/css" href="welcome.css">
</head>
<body>
	<%
	HttpSession session1 = request.getSession(false);
	if (session1 != null && session1.getAttribute("username") != null) {
		String username = (String) session1.getAttribute("username");
	%>
	<div class="container">

		<h1>
			Welcome
			<%=username%>
			!
		</h1>

		<p>We're delighted to welcome you to MAHAJAN AUTOMOTIVES.</p>
		<p>your trusted source for all your automotive needs.</p>
		<p>Whether you're looking for a new ride, seeking reliable service,</p>
		<p>or exploring the latest deals, we're here to assist you every step of the way.</p>
		<a href="LogOut.jsp">logout</a> Securely
	</div>
	<%
	} else {
	response.sendRedirect("Login.jsp");
	}
	%>
	
</body>
</html>