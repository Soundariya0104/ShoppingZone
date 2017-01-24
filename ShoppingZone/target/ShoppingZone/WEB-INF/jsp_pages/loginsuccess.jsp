<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome OnlineShopping</title>
</head>
<body>
<h2>Welcome OnlineShopping</h2>

<h4> Hello ${user.username} You have been Successfully Logged in</h4>
<ul>
			<li>Your email: ${user.emailId}</li>
			<li>Your Dob: ${user.dob}</li>
			<li>Mobile: ${user.mobile}</li>
			<li>Streetname: ${user.streetname}</li>
			<li>Cityname: ${user.cityname}</li>
			<li>Pincode: ${user.pinCode}</li>
			</ul>

<a href="login">logout</a>
</body>
</html>