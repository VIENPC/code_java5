<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Page</h1>
	<form method="post" action="create">
		<label for="username">Username:</label> <input type="text"
			id="username" name="username" required value="${user.username}">
		<br> <label for="password">Password:</label> <input
			type="password" id="password" name="password" required
			value="${user.password}"> <br> <input type="checkbox" id="check"
			name="remember"><label for="check">REMEMBER ME?</label> <br>
		<button>Create</button>
	</form>
</body>
</html>