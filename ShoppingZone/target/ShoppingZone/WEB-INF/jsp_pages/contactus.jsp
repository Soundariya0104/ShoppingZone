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
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<%@ include file="header.jsp"%>



	<div class="footer-title uppercase">
		<h4>Contact US</h4>
	</div>
	<br>
	<br>
	<ul>
		<li>
			<div class="contact-icon">
				<i class="zmdi zmdi-pin-drop"></i>
			</div>
			<div class="contact-text">
				<h3>Located at</h3>
				<p>
					<span>777/a Seventh Street,</span> <span>Rampura, Bonosri</span>
				</p>
			</div>
		</li>
		<li>
			<div class="contact-icon">
				<i class="zmdi zmdi-email-open"></i>
			</div>
			<div class="contact-text">
				<h3>Mail us at</h3>
				<p>
					<span>SportsFocus@gmail.com,</a></span> <span>admin@sportsfocus.com</a></span>
				</p>
			</div>
		</li>
		<li>
			<div class="contact-icon">
				<i class="zmdi zmdi-phone-paused"></i>
			</div>
			<div class="contact-text">
				<h3>Call us at</h3>
				<p>
					<span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span>
				</p>
			</div>
		</li>
	</ul>
	</div>
	</div>
	<br>
	<br>
	<%@ include file="footer.jsp"%>




	<!-- End of header area -->
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

