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
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Body main wrapper start -->
	<div class="wrapper home-one">
		<!-- footer area start-->
		<div class="footer-area ptb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
						<div class="single-footer contact-us">
							<div class="footer-title uppercase">
								<h5>Contact US</h5>
							</div>
							<ul>
								<li>
									<div class="contact-icon">
										<i class="zmdi zmdi-pin-drop"></i>
									</div>
									<div class="contact-text">
										<p>
											<span>777/a Seventh Street,</span> <span>Rampura,
												Bonosri</span>
										</p>
									</div>
								</li>
								<li>
									<div class="contact-icon">
										<i class="zmdi zmdi-email-open"></i>
									</div>
									<div class="contact-text">
										<p>
											<span><a href="#">SportsFocus@gmail.com</a></span> <span><a
												href="#">admin@sportsfocus.com</a></span>
										</p>
									</div>
								</li>
								<li>
									<div class="contact-icon">
										<i class="zmdi zmdi-phone-paused"></i>
									</div>
									<div class="contact-text">
										<p>
											<span>+11 (019) 25184203</span> <span>+11 (018)
												50950555</span>
										</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
						<div class="single-footer informaton-area">
							<div class="footer-title uppercase">
								<h5>Information</h5>
							</div>
							<div class="informatoin">
								<ul>
									<li><a href="#">My Account</a></li>
									<li><a href="#">Order History</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Returnes</a></li>
									<li><a href="#">Private Policy</a></li>
									<li><a href="#">Site Map</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 hidden-sm col-xs-12">
						<div class="single-footer instagrm-area">
							<div class="footer-title uppercase">
								<h5>InstaGram</h5>
							</div>
							<div class="instagrm">
								<ul>
									<li><a href="#"><img
											src="<c:url value="/resources/images/gallery/01.jpg"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/gallery/02.jpg"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/gallery/03.jpg" />"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/gallery/04.jpg"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/gallery/05.jpg" />"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/gallery/06.jpg" />"
											alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-lg-offset-1 col-xs-12">
						<div class="single-footer newslatter-area">
							<div class="footer-title uppercase">
								<h5>Get Newsletters</h5>
							</div>
							<div class="newslatter">
								<form action="#" method="post">
									<div class="input-box pos-rltv">
										<input placeholder="Type Your Email hear" type="text">
										<a href="#"> <i class="zmdi zmdi-arrow-right"></i>
										</a>
									</div>
								</form>
								<div class="social-icon socile-icon-style-3 mt-40">
									<div class="footer-title uppercase">
										<h5>Social Network</h5>
									</div>
									<ul>
										<li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-linkedin"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-pinterest"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-google"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--footer area start-->

		<!--footer bottom area start-->
		<div class="footer-bottom global-table">
			<div class="global-row">
				<div class="global-cell">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="copyrigth">
									Copyright @ <a href="devitems.com">SportsFocus 2016</a> All
									right reserved
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<ul class="payment-support text-right">
									<li><a href="#"><img
											src="<c:url value="/resources/images/icons/pay1.png"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/icons/pay2.png"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/icons/pay3.png"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/icons/pay4.png"/>"
											alt="" /></li>
									<li><a href="#"><img
											src="<c:url value="/resources/images/icons/pay5.png"/> "
											alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--footer bottom area end-->
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
	</div>
</body>
</html>