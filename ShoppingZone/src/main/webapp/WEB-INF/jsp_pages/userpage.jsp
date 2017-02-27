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
<link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
<!-- Responsive css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/responsive.css"/>">
<!-- User style -->
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/color/skin-default.css"/>">


<!-- Modernizr JS -->
<script
	src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>
<body>

	<%@ include file="header.jsp"%>
	<br>
	<div class="container">
		<div class="row">
			<h4 class="page-header">User Profile</h4>
			<div class="col-md-4">
				<h2>${msg}</h2>
				<div class="col-md-10 col-lg-10 " align="center">
					<!--         <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" style="height:270px;width:100% "class="img-circle img-responsive">  -->
				</div>

			</div>
			<div class="col-md-12">
				<h3>Your details ${userDetails.username }!!</h3>
				<div class=" col-md-9 col-lg-9 ">
					<table class="table table-user-information">
						<tbody>
						<col width="200">
						<col width="200">

						<tr>
							<td><span class="glyphicon glyphicon-asterisk text-primary"></span>&nbsp;&nbsp;Username
							</td>
							<td>:&nbsp;&nbsp; ${userDetails.username }</td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-phone text-primary"></span>&nbsp;&nbsp;Mobile
							</td>
							<td>:&nbsp;&nbsp; ${userDetails.mobile }</td>
						</tr>

						<tr>
							<td><span class="glyphicon glyphicon-envelope text-primary"></span>&nbsp;&nbsp;Email
								Id</td>
							<td>:&nbsp;&nbsp; ${userDetails.emailId }</td>
						</tr>

						<tr>
							<td><span class="glyphicon glyphicon-tags text-primary"></span>&nbsp;&nbsp;Streetname
						    </td>
							<td>:&nbsp;&nbsp; ${userDetails.streetname }</td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-home text-primary"></span>&nbsp;&nbsp;Cityname
								</td>
							<td>: &nbsp;&nbsp;${userDetails.cityname }</a></td>
						</tr>
						<tr>
							<td><span class="glyphicon glyphicon-send text-primary"></span>&nbsp;&nbsp;Pincode
								</td>
							<td>:&nbsp;&nbsp; ${userDetails.pinCode }</td>
						</tr>



						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
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