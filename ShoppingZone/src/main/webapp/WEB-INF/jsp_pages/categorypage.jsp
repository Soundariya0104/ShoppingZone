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

<script src="<c:url value="/resources/js/angular.min.js"/>"></script> 
<!-- Modernizr JS -->
<script
	src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>

<body ng-app="productTable" ng-controller="ProductController">

		<%@ include file="header.jsp"%>

	<!-- product category -->
	<section id="aa-product-category">
		<div class="container">
			<div class="row">
								<!-- start single product item -->
								<div ng-repeat="productList in Product|filter:searchText">
								 <div class="col-md-4 col-md-4 col-md-4 thumb">

                                        <!-- single product start-->
                                        
                                        <div class="single-product">
                                            <div class="product-img">
                                                <div class="single-prodcut-img  product-overlay pos-rltv">
                                                    <a href="productpage?productId={{productList.productId}}"> <img alt="" style="height:250px;width:250px" src="<c:url value="/resources/images/product/{{productList.productId }}.jpeg"/>"> </a>
                                                </div>
                                                
                                                
                                                <div class="product-icon socile-icon-tooltip text-center">
                                                    <ul>
                                                        <li><a href="addtocart?username={{User}}&productId={{productList.productId}}&quantity=1" style="color:black" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                                                                         </ul>
                                                </div>
                                            </div>
                                            <div class="product-text">
                                                <div class="prodcut-name"> {{productList.productName }} </div>
                                                <div class="prodcut-ratting-price">
                                                    <div class="prodcut-price">
                                                        <div class="new-price"> {{productList.productPrice }}-/</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single product end-->
                                    </div> 
                                    </div>
                                    
						<div class="aa-product-catg-pagination">
							<nav>
								<ul class="pagination" style="align:center">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				

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