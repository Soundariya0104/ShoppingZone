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

	<!-- Body main wrapper start -->
	<div class="wrapper home-one">

		<!-- Start of header area -->
		<header class="header-area header-wrapper">
			<div class="header-top-bar black-bg clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="login-register-area">
								<ul>
									<c:if test="${ Loggedin != true }">
										<li><a href="loginpage"><span class=""></span> Login</a></li>
										<li><a href="register"><span class=""></span>
												Register</a></li>
										<li><a href="aboutus"><span class="">About Us</span></a></li>
									</c:if>

									<c:if test="${ Loggedin == true }">
										<li><a href="userpage?username=${User }"><span
												class="glyphicon glyphicon-user"></span> ${User}'s account</a></li>
										<li><a href="logout"><span class=""></span> Logout</a></li>

									</c:if>


									<c:if test="${ isAdmin == true  }">
										<li><a href="category">Manage Category</a></li>
										<li><a href="supplier">Manage Supplier</a></li>
										<li><a href="product">Manage Product</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 hidden-xs">
							<div class="social-search-area text-center">
								<div class="social-icon socile-icon-style-2">
									<ul>
										<li><a href="#" title="facebook"><i
												class="fa fa-facebook"></i></a></li>
										<li><a href="#" title="twitter"><i
												class="fa fa-twitter"></i></a></li>
										<li><a href="#" title="dribble"><i
												class="fa fa-dribbble"></i></a></li>
										<li><a href="#" title="behance"><i
												class="fa fa-behance"></i></a></li>
										<li><a href="#" title="rss"><i class="fa fa-rss"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6">
							<div class="cart-currency-area login-register-area text-right">
								<ul>
									<li>
										<div class="header-currency">
											<select>
												<option value="1">Rupees</option>
												<option value="1">USD</option>
												<option value="2">Pound</option>
												<option value="3">Euro</option>
												<option value="4">Dinar</option>
											</select>
										</div>
									</li>
									<li>
										<div class="header-cart">
											<div class="aa-cartbox">
												<a class="aa-cart-link" href=" "> <span
													class="fa fa-shopping-basket"></span> <span
													class="aa-cart-title">Cart</span> <c:choose>
														<c:when test="${  empty cartList}">
															<span class="aa-cart-notify"> &nbsp;</span>
														</c:when>
													</c:choose> <c:choose>
														<c:when test="${ not empty cartList}">
															<span class="aa-cart-notify"> ${cartsize}</span>
														</c:when>
													</c:choose>
												</a>
												<c:choose>
													<c:when test="${ not empty cartList}">
														<div class="aa-cartbox-summary">
															<ul>
																<c:forEach var="cartList" items="${cartList}">
																	<li><a class="aa-cartbox-img" href="#"><img
																			src="<c:url value="resources/product/${cartList.productModel.productId}.png"/>"
																			alt="img"></a>
																		<div class="aa-cartbox-info">
																			<h4>
																				<a href="#">${cartList.productModel.productName}</a>
																			</h4>
																			<p>
																				<i class="fa fa-inr"></i>
																				${cartList.productModel.productPrice } /-
																			</p>
																		</div></li>
																</c:forEach>
															</ul>

															<a class="aa-cartbox-checkout aa-primary-btn"
																href="checkout?username=${User}">Checkout</a> <a
																class="aa-cartbox-checkout aa-primary-btn"
																href="cart?username=${User}">Cart</a>
														</div>
													</c:when>

												</c:choose>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="sticky-header" class="header-middle-area">
				<div class="container">
					<div class="full-width-mega-dropdown">
						<div class="row">
							<div class="col-md-2 col-sm-2">
								<div class="logo ptb-20">
									<a href="index"> <!-- <span class="fa fa-shopping-cart"></span>-->
										<p>
										<h3 style="color: red">
											<b><i>Sports<strong>Focus</strong></i></b>
										</h3>
										</p>
									</a>
									<!-- <img src="<c:url value="/resources/images/logo/logo.png"/>" alt="main logo"/>-->
								</div>
							</div>
							<div class="col-md-7 col-sm-10 hidden-xs">
								<nav id="primary-menu">
									<ul class="main-menu">


										<c:if test="${ isAdmin != true  }">
											<c:forEach var="categoryList" items="${categoryList}">

												<li><a
													href="categorypage?categoryId=${categoryList.categoryId}">${categoryList.categoryName}
												</a></li>

											</c:forEach>
										</c:if>

									</ul>
								</nav>
							</div>

							<div class="col-md-3 hidden-sm hidden-xs">
								<div class="search-box global-table">
									<div class="global-row">
										<div class="global-cell">
											<form action="#">
												<div class="input-box">
													<input class="single-input" placeholder="Search anything"
														type="text">
													<button class="src-btn">
														<i class="fa fa-search"></i>
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</header>
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
	</div>
</body>
</html>