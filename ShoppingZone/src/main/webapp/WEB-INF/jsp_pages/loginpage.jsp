<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home || RoyalSports</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/icons/favicon.ico"/>">
<!-- Place favicon.ico in the root directory -->

<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="<c:url value="/resources/css/core.css"/>">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/shortcode/shortcodes.css"/>">
<!-- Theme main style -->
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<!-- Responsive css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/responsive.css"/>">
<!-- User style -->
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/color/skin-default.css"/>">


<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<%@ include file="header.jsp"%>
	<br>
	<div class="container">
		<div class="jumbotron">
			<h3 style="text-align: center">LOGIN PAGE</h3>
			<br>
			<h5>Login here!!</h5>
			<form:form action="loginresult" method="post" commandName="user">
				<div id="collapseThree">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-8">
								<div class="aa-checkout-single-bill">
									Username:
									<form:input type="text" placeholder="Enter your username"
										path="username" style="background-color:white" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-8">
								<div class="aa-checkout-single-bill">
									Password:
									<form:input type="password" placeholder="Email your password"
										path="password" style="background-color:white" />
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-8">
								<div class="aa-checkout-single-bill">
									<input type="submit" value="Login"
										style="background-color: white" />
								</div>
							</div>
						</div>
					</div>
				</div>

				<input type="hidden" name="${_csrf.paramterName }"
					value="${_csrf.token }">
			</form:form>
			<br>
			<h5>
				Are you a new user?<a href="register"
					style="text-decoration: none; color: black;"><u>SignUp</u></a>
				here...
			</h5>
		</div>
	</div>

	<br>
	<br> ${result}
	<br>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
	<!-- Body main wrapper end -->

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- jquery latest version -->
	<script
		src="<c:url value="/resources/js/vendor/jquery-1.12.0.min.js"/>"></script>
	<!-- Bootstrap framework js -->
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<!-- Slider js -->
	<script
		src="<c:url value="/resources/js/slider/jquery.nivo.slider.pack.js"/>"></script>

	<!-- counterUp-->
	<script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
	<!-- All js plugins included in this file. -->
	<script src="<c:url value="/resources/js/plugins.js"/>"></script>
	<!-- Main js file that contents all jQuery plugins activation. -->
	<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>

