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
<br><br><br>

<h4>Login here!!</h4>
<c:url var="action" value="loginresult"></c:url>
<form:form action="${action}" method="post" commandName="user">
<table>
<tr>
<td>Username:</td> <td><form:input type="text" path="username" placeholder="Enter username"/></td></tr>
<tr><td>Password:</td> <td><form:input type="password" path="password" placeholder="Enter password"/></td></tr>
<tr><td><input type="submit" value="Sign in ">
</td></tr></table>
<input type="hidden" name="${_csrf.paramterName }" value="${_csrf.token }">
</form:form><br>
 <h5>Are you a new user?<a href="register" style="text-decoration: none; color:black;"><u>SignUp</u></a> here...</h5>
<br><br>
${result}<br><br><br>
<%@ include file="footer.jsp" %>
<!-- Body main wrapper end -->

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="<c:url value="/resources/js/vendor/jquery-1.12.0.min.js"/>"></script>
    <!-- Bootstrap framework js -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <!-- Slider js -->
    <script src="<c:url value="/resources/js/slider/jquery.nivo.slider.pack.js"/>"></script>

    <!-- counterUp-->
    <script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
    <!-- All js plugins included in this file. -->
    <script src="<c:url value="/resources/js/plugins.js"/>"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>
