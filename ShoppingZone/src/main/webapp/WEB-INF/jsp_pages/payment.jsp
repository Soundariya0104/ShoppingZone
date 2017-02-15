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
    <link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>">
    <!-- User style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/color/skin-default.css"/>">

    
    <!-- Modernizr JS -->
    <script src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js"/>"></script>
    <style>.invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
</style>
  <script type="text/javascript">
        window.onload = function(){
             var n = 25555;
             var number = Math.floor(Math.random()*n)+1;
             document.getElementById("randomNumber").innerHTML = number;
        };
     </script>
  </head>

  <body> 


  <%@ include file="header_user.jsp"%>
 
 <Strong><h2>Payment has been SuccessFully done, Thank you</h2></Strong><br>
 <a href="finalindex?username=${User}"><button class="aa-browse-btn">Continue Shopping</button></a>
 
 
 
<!--  <div class="container"> -->
<!--     <div class="row"> -->
<!--         <div class="col-xs-12"> -->
<!--     		<div class="invoice-title"> -->
<!--     			<h2>Invoice Details</h2><h3 class="pull-right">Order Id: #<strong id="randomNumber"></strong></h3> -->
<!--     		</div> -->
<!--     		<hr> -->
<!--     		<div class="row"> -->
<!--     			<div class="col-xs-6"> -->
<!-- <!--     				<address> --> -->
<!-- <!--     				<strong>Billed To:</strong><br> --> -->
<!-- <!--     					$billingFirstname<br> --> -->
<!-- <!--     					$billingAddress<br> --> -->
<!-- <!--     					$billingCity<br> --> -->
<!-- <!--     					$billingPincode --> -->
<!-- <!--     				</address> --> -->
<!--     			</div> -->
<!--     			<div class="col-xs-6 text-right"> -->
<!--     				<address> -->
<!--         			<strong>Shipped To:</strong><br> -->
<%--     					${addressModel.billingFirstname}<br> --%>
<%-- 	${addressModel.billingAddress}<br> --%>
<%-- 	${addressModel.billingCity}<br> --%>
<%-- 	${addressModel.billingPincode}<br> --%>
    
<%-- 	Email: ${addressModel.billingEmail}<br> --%>
<%-- 	Mobile: ${addressModel.billingPhone}; --%>
						
    					
    					
<!--     				</address> -->
<!--     			</div> -->
<!--     		</div> -->
<!--     		<div class="row"> -->
<!--     			<div class="col-xs-6"> -->
<!--     				<address> -->
<!--     					<strong>Payment Method:</strong><br> -->
<%--     					${addressModel.paymentOption}<br> --%>
    					
<!--     				</address> -->
<!--     			</div> -->
<!--     			<div class="col-xs-6 text-right"> -->
<!--     				<address> -->
<!--     					<strong>Order Date&Time:</strong><br> -->
<%--     					${addressModel.billingTime}<br><br> --%>
<!--     				</address> -->
<!--     			</div> -->
<!--     		</div> -->
<!--     	</div> -->
<!--     </div> -->
    
<!--     <div class="row"> -->
<!--     	<div class="col-md-12"> -->
<!--     		<div class="panel panel-default"> -->
<!--     			<div class="panel-heading"> -->
<!--     				<h3 class="panel-title"><strong>Order summary</strong></h3> -->
<!--     			</div> -->
<!--     			<div class="panel-body"> -->
<!--     				<div class="table-responsive"> -->
<!--     					<table class="table table-condensed"> -->
<!--     						<thead> -->
                               
<!--                                 <tr> -->
<!--         							<td><strong>Item</strong></td> -->
<!--         							<td class="text-center"><strong>Price</strong></td> -->
<!--         							<td class="text-center"><strong>Quantity</strong></td> -->
<!--         							<td class="text-right"><strong>Totals</strong></td> -->
<!--                                 </tr> -->
<!--     						</thead> -->
<!--     						<tbody> -->
<%--     						  <c:forEach var="cartList" items="${cartList}"> --%>
<!--                    	<tr> -->
<%--     								<td>${cartList.productModel.productName }</td> --%>
<%--     								<td class="text-center">${cartList.productModel.productPrice}</td> --%>
<!--     								<td class="text-center">$cartList.quantity </td> -->
<!--     								<td class="text-right">$totalprice</td> -->
<%--     							</tr></c:forEach> --%>
                            
                            
<!--                             	<tr> -->
<!--     								<td class="thick-line"></td> -->
<!--     								<td class="thick-line"></td> -->
<!--     								<td class="thick-line text-center"><strong>subtotal</strong></td> -->
<!--     								<td class="thick-line text-right">$subtotal</td> -->
<!--     							</tr> -->
<!--     							<tr> -->
<!--     								<td class="no-line"></td> -->
<!--     								<td class="no-line"></td> -->
<!--     								<td class="no-line text-center"><strong>Total</strong></td> -->
<!--     								<td class="no-line text-right">$grandtotal</td> -->
<!--     							</tr> -->
<!--     						</tbody> -->
<!--     					</table> -->
<!--     				</div> -->
<!--     			</div> -->
<!--     		</div> -->
<!--     	</div> -->
<!--     </div> -->
<!-- </div> -->
 
 
 
<%--     <a href="${flowExecutionUrl }&_eventId=submit">submit</a> --%>
<%--                   <a href="${flowExecutionUrl }&_eventId=back">back</a> --%>
               
 
 



  <%@ include file="footer.jsp"%>
 <!-- End of header area -->
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




























