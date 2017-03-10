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
	
	<script src="<c:url value="/resources/js/angular.min.js"/>"></script> 
</head>

<body ng-app="productTable" ng-controller="ProductController">
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

									<c:choose>
										<c:when test="${ not empty values}">
											<!-- spring form -->
											<h4>Product Page</h4>
											<form:form action="addProduct" method="post"
												enctype="multipart/form-data" commandName="product">

												<label for="" style="width: 51%">Product Id: </label>
												<form:input type="text" value="${values.getProductId() }"
													path="productId"  readonly="true"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 50%;" />

												<br>
												<label for="">Product Name:</label>

												<form:input type="text" value="${values.getProductName()}"
													path="productName"
													style="border: 1px solid #ccc;
  font-color:black;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 50%;" />
												<br>
												<label for="">Product Description:</label>
												<form:input type="text"
													value="${values.getProductDescription()}"
													path="productDescription"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<label for="">Product Price:</label>
												<form:input type="text" value="${values.getProductPrice()}"
													path="productPrice"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />

												<label for="">Category Id</label>
												<form:select path="categoryId" items="${categorylist}"
													itemValue="categoryId" itemLabel="categoryId"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<label for="">Supplier Id</label>
												<form:select path="supplierId" items="${supplierlist}"
													itemValue="supplierId" itemLabel="supplierId"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />

												<label for="">image:</label>
												<input type="file" name="image"
													style="border: 1px solid #ccc; font-size: 16px; height: 40px; margin-bottom: 15px; padding: 10px; width: 100%;" />
												<button class="aa-browse-btn" type="submit">Edit
													Product</button>
											</form:form>


										</c:when>
										<c:otherwise>
											<c:url var="action" value="/addProduct"></c:url>
											<h4>Product page</h4>
											<form:form action="addProduct" method="post"
												enctype="multipart/form-data" commandName="product">

												<label for="" style="width: 49%">Product Id:</label>
												<br>
												<form:input type="text" placeholder="Enter the ProductId"
													path="productId"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 47%;" />
												<br>


												<label for="">Product Name:</label>
												<br>
												<form:input type="text" placeholder="Enter the ProductName"
													path="productName"
													style="border: 1px solid #ccc;
  color:black;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 50%;" />
												<br>
												<label for="">Product Description:</label>
												<br>
												<form:input type="text"
													placeholder="Enter the ProductDescription"
													path="productDescription"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<br>


												<label for="" style="width: 49%">Category Id</label>
												<br>
												<form:select path="categoryId" items="${categorylist}"
													itemValue="categoryId" itemLabel="categoryId"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 47%;" />
												<br>

												<label for="">Supplier Id</label>
												<br>
												<form:select path="supplierId" items="${supplierlist}"
													itemValue="supplierId" itemLabel="supplierId"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 50%;" />
												<br>



												<label for="" style="width: 49%">Product Price:</label>
												<form:input type="text" placeholder="Enter the ProducPrice"
													path="productPrice"
													style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />
												<br>





												<label for="">image:</label>
												<form:input type="file" path="image"
													style="border: 1px solid #ccc;
   font-size: 16px; 
   height: 40px; 
   margin-bottom: 15px; 
   padding: 10px; 
   width: 100%;" />

												<button class="aa-browse-btn" type="submit"
													style="color: black;">Add Product</button>


											</form:form>

										</c:otherwise>
									</c:choose>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Cart view section -->
	<section id="cart-view">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cart-view-area">
						<div class="cart-view-table">
							<div class="page-header">
								<h3>
									<strong>Product List</strong>
								</h3>
							</div>
							<div class="table-responsive" ng-app="productTable"
								ng-controller="ProductController">
								<div>
									<label style="width: 12%" for="">Search:</label><input
										type=text
										style="border: 1px solid #ccc; font-size: 16px; height: 40px; margin-bottom: 15px; padding: 10px; width: 40%;"
										placeholder="Enter product name" ng-model="searchText" />
								</div>

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Product Id</th>
												<th>Product Name</th>
												<th>Product Description</th>
												<th>Category Id</th>
												<th>Supplier Id</th>
												<th>Product Price</th>
												<th>Product Picture</th>
												<th colspan="2">Manage Products
												<th>
											</tr>
										</thead>
										<tbody>
											<tr ng-repeat="listValue in Product|filter:searchText">
												<td>{{listValue.productId}}</td>
												<td><a class="aa-cart-title" style="color:black">{{listValue.productName}}</a></td>
												<td>{{listValue.productDescription}}</td>
												<td>{{listValue.categoryId}}</td>
												<td>{{listValue.supplierId}}</td>
												<td><i class="fa fa-inr"></i>
													{{listValue.productPrice}}</td>
												<td><a href="#"><img
														src="<c:url value="/resources/images/product/{{listValue.productId}}.jpeg"/>"
														style="height:50px;width:50px" alt="{{listValue.productId}}"></a></td>
												<td style="border-right: white">
													<form action="deleteProduct">
														<button name="productId" class="aa-cart-view-btn"
															type="submit" value={{listValue.productId}}
															style="heigth: 2px;color:black">Delete</button>
													</form>
												</td>
												<td><form action="editProduct">
														<button name="productId" class="aa-cart-view-btn"
															type="submit" value={{listValue.productId}}
															style="heigth: 1px;color:black">Edit</button>
													</form></td>
											</tr>


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
	
	
	<script>
  var prod = ${productList}; 
  angular.module('productTable',[]).controller('ProductController', function($scope)  
   {
          $scope.Product=prod;  
       
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   
              $scope.reverse = !$scope.reverse; 
          }
              
    });
</script>
	
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