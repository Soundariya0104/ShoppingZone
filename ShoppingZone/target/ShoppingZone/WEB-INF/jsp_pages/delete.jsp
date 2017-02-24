<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
	<h2>Welcome to OnlineShopping</h2>

	<h4>Enter your username and password</h4>
	<form action="deletesuccess" method="post">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Confirm Delete "></td>
			</tr>
		</table>
	</form>
	<br>

	<a href="index">back</a>
</body>
</html>