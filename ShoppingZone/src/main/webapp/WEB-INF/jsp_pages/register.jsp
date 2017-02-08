<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home || SportsFocus</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="<c:url value="/resources/images/icons/favicon.ico"/>">
    <!-- Place favicon.ico in the root directory -->

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="<c:url value="/resources/css/core.css"/>">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/shortcode/shortcodes.css"/>">
    <!-- Theme main style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>">
    <!-- User style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">  <link rel="stylesheet" href="<c:url value="/resources/css/color/skin-default.css"/>">

    
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<%@ include file="header.jsp" %>
	<h2>
		Welcome to OnlineShopping</a>
	</h2>
	<h5>Register with us!!</h5>
	<form:form action="registersuccess" method="post" commandName="user">
		<table>
			<tr>
				<td>Your good name:</td>
				<td><form:input type="text" path="username"/></td>
			</tr>

			<tr>
				<td>Email_id:</td>
				<td><form:input type="email" path="emailId" /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><form:input type="password" 
						path="password" /></td>
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
       
       <input type="submit" value="Register"/>
	</form:form>

</body>
</html>
