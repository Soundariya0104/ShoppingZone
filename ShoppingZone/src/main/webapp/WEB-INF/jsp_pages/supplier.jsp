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
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
<body>


	<%@ include file="header.jsp"%>
	<section id="aa-myaccount">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-myaccount-area">
						<div class="row">
							<div class="col-md-8">
								<div class="aa-myaccount-register">


									<h5>Supplier page</h5>

									<c:choose>
										<c:when test="${ not empty values}">

											<!-- spring form -->
											<c:url var="action" value="/addsupplier"></c:url>
											<form:form action="${action}" method="get"
												commandName="supplier">

												<label for="">Supplier Id:</label>
												<form:input type="text" value="${values.getSupplierId() }"
													path="supplierId" readonly="true"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<label for="">Supplier Name:</label>
												<form:input type="text" value="${values.getSupplierName()}"
													path="supplierName"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<label for="">Supplier Details:</label>
												<form:input type="text"
													value="${values.getSupplierDetails()}"
													path="supplierDetails"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<button class="aa-browse-btn" type="submit"
													style="color: black;">Edit Supplier</button>
											</form:form>
										</c:when>
										<c:otherwise>
											<c:url var="action" value="/addsupplier"></c:url>
											<form:form action="${action}" method="get"
												commandName="supplier">

												<label for="">Supplier Id:</label>
												<form:input type="text" value="${values.getSupplierId() }"
													path="supplierId"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<label for="">Supplier Name:</label>
												<form:input type="text" value="${values.getSupplierName()}"
													path="supplierName"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<label for="">Supplier Details:</label>
												<form:input type="text"
													value="${values.getSupplierDetails()}"
													path="supplierDetails"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<button class="aa-browse-btn" type="submit"
													style="color: black;">Add Supplier</button>

											</form:form>

										</c:otherwise>
									</c:choose>
									<br> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="cart-view">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cart-view-area">
						<div class="cart-view-table">
							<div class="page-header">
								<h3>
									<strong>Supplier List</strong>
								</h3>
							</div>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>Supplier Id</th>
											<th>Supplier Name</th>
											<th>Supplier Details</th>
											<th colspan="2">Options</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="listValue" items="${list}">
											<tr>
												<td>${listValue.supplierId}</td>
												<td>${listValue.supplierName}</td>
												<td>${listValue.supplierDetails}</td>
												<td style="border-right: white"><form
														action="deletesupplier">
														<button name="supplierId" type="submit"
															style="color: black;" value=${listValue.supplierId}>Delete</button>
													</form></td>
												<td><form action="editsupplier">
														<button name="supplierId" type="submit"
															style="color: black;" value=${listValue.supplierId}>Edit</button>
													</form></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
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
	</div>
</body>
</html>