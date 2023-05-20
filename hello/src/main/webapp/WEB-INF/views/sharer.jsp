<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Name</th>
			<th>Value</th>

		</tr>
		
		<tr>
			<td>message</td>
			<td>${message}</td>

		</tr>
		<tr>
			<td>String </td>
			<td>${string}</td>

		</tr>
		<tr>
			<td>now</td>
			<td>${now}</td>

		</tr>
		<tr>
			<td>date</td>
			<td>${date}</td>

		</tr>
		
		<tr>
			<th>account</th>
			<th>${account.getUsername()} - ${account.getPassword()}</th>
		</tr>
		<tr>
			<th>user</th>
			<th>${user.getUsername() - ${user.getPassword()}</th>
		</tr>
		
		
		






	</table>
</body>
</html>