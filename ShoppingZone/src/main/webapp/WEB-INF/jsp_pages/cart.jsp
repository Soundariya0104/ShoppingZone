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


	<!--  header  section -->
	<section id="aa-catg-head-banner">

		<div class="aa-catg-head-banner-area">
			<div class="container">
				<div class="aa-catg-head-banner-content">
					<h2>
						<center>Add to Cart</center>
					</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- /  header  section -->

	<!-- Cart view section -->
	<section id="cart-view">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cart-view-area">
						<div class="cart-view-table">
							<form action="updateactionquantity">
											
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>

												<th>Product Display</th>
												<th>Product</th>
												<th>Price</th>
												<th>Quantity</th>
												<th>Total</th>
												<th>Remove</th>
											</tr>
										</thead>
										<tbody>
											<c:set var="grandtotal" value="${0}" />
											<c:forEach var="cartList" items="${cartList}">
												<tr>
													<td>
			
													<a href="productpage?productId=${cartList.product.productId}">><img
															src="<c:url value="/resources/images/product/${cartList.product.productId }.jpeg"/>"
															style="height: 100px; width: 80px" alt="img"></a></td>
													<td><a class="aa-cart-title" href="#" style="color:black">${cartList.product.productName}</a></td>
													<td><i class="fa fa-inr"></i>
														${cartList.product.productPrice} /-</td>
													<td>
			
<input type="number" name="quantity" value="${cartList.quantity}"	min="1" max="50"><br> 
<input type="hidden" name="username" value="${User}"> 
<input	type="hidden" name="productId" value="${cartList.product.productId }">
 
							<input type="submit" value="Update">
												</td>
													<td>${cartList.total}</td>
		<td><a style="color:black"	href="removeorder?orderId=${cartList.orderId}&username=${cartList.user.username}"><span class="fa-fa-trash"></span>Remove</a>
													
													</td>

												</tr>

												<c:set var="grandtotal"
													value="${grandtotal + cartList.total}" />

											</c:forEach>

										</tbody>
									</table>
									
								</div>
							</form>
							<!-- Cart Total view -->
							<div class="cart-view-total" style="align:center">
								<h4>Cart Totals</h4>
								<table class="aa-totals-table">
									<tbody>
										<tr>
											<th>Grand Total</th>
											<td><strong id="total"><span id="sum"><i
														class="fa fa-inr"></i> ${grandtotal} /-</span></strong></td>
										</tr>
									</tbody>
								</table>
								<%--<a href="checkout?username=${User}" class="aa-cart-view-btn">Proceed to Checkout</a> --%>
								<a href="webflow"><button class="aa-cart-view-btn" style="color: black;text-align:center">Proceed
									to Checkout</button></a>
									
								<a href="index?username=${User}"><button class="aa-cart-view-btn" type="button" style="background-color:black"> <span class="glyphicon glyphicon-arrow-left"></span> Continue Shopping</button></a>	

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Cart view section -->




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