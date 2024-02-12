<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<body>
	<%
	HttpSession Currentsession1 = request.getSession(false);
	if(Currentsession1!=null){
		Currentsession1.invalidate();
	}
	response.sendRedirect("index.html");
	
	%>
	
</body>
</html>