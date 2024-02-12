<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<div class="container">
<h1>Register</h1>
<form action="RegisterServlet" method="post">

<label for="email">Email:</label>
<input type="text" id="email" name="email">
<br>
<label for="username">UserName:</label>
<input type="text" id="username" name="username">
<br>
<label for="password">Password:</label>
<input type="password" id="password" name="password">
<br>
<button type="submit">Register</button>
</form>
<p><a href="index.html">Back to home</a></p>
</div>
</body>
</html>