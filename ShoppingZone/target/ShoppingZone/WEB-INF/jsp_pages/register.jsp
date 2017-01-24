<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register</title>
</head>
<body>
	<h2>
		Welcome to OnlineShopping</a>
	</h2>
	<h5>Register with us!!</h5>
	<c:url var="action" value="registersuccess"></c:url>
	<form:form action="${action}" method="post" commandName="user">
		<table>
			<tr>
				<td>Your good name:</td>
				<td><form:input type="text"
						title="id should have max 15 min 3 char" path="username"
						pattern="[A-Za-z]{3,15}" required="true" autocomplete="on" /></td>
			</tr>

			<tr>
				<td>Email_id:</td>
				<td><form:input type="email" path="emailId" /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><form:input type="password" pattern="{5,}[a-z0-9]"
						path="password" required="true" /></td>
			</tr>

			<tr>
				<td>Confirm Password:</td>
				<td><input type="password" /></td>
			</tr>

			<tr>
				<td>DOB:</td>
				<td><form:input type="text" path="dob" /></td>
			</tr>
			<tr>
				<td>Mobile_No:</td>
				<td><form:input type="text" path="mobile" /></td>
			</tr>
		</table>
		<table>
			Address:
			
			<tr>
				<td>Street name:</td>
				<td><form:input type="text" path="streetname" /></td>
			</tr>

			<tr>
				<td>City name:</td>
				<td><form:input type="text" path="cityname" /></td>
			</tr>
			<tr>
				<td>Pincode:</td>
				<td><form:input type="text" path="pinCode" /></td>
			</tr>
       </table>
	</form:form>
<input type="submit" value="Register">
</body>
</html>
