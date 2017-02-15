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
</head>
<body>
 
 <%@ include file="header_user.jsp"%>
 
<!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form:form  commandName="user" action="${flowExecutionUrl }"> <!-- action="carddetails" -->
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" id="accordion">
                    <!-- Billing Details -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                         <!--  <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"> -->
                            <strong class="title"><h4>Shipping Address</h4></strong>
                         <!-- </a> -->
                        </h4>
                      </div>
                      <div id="collapseThree" >
                        <div class="panel-body">
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                 <form:input type="text" placeholder="Name" path="billingFirstname"/> 
                              </div>                             
                            </div>
                             </div> 
                          
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:input type="email" placeholder="Email Address*" path="billingEmail"/>
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:input type="tel" placeholder="Phone*" path="billingPhone" />
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <form:textarea cols="8" rows="3" path="billingAddress"/>Address*</textarea>
                              </div>                             
                            </div>                            
                          </div>   
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:select path="billingCity">
                                  <option value="0">Select Your City</option>
                                  <option value="1">Chennai</option>
                                  <option value="2">Allahabad</option>
                                  <option value="3">Bangalore</option>
                                  <option value="4">Hyderabad</option>
                                  <option value="5">Mumbai</option>
                                  <option value="6">Goa</option>
                                  <option value="7">Kolkata</option>
                                  <option value="8">Cochin</option>
                                   </form:select>
                              </div>                             
                            </div>
<div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:input type="text" placeholder="Postcode / ZIP*" path="billingPincode"/>
                              </div>
                            </div>                            
                          </div>
                            
                       </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="checkout-right">
<!--                   <h4><strong>Order Summary</strong></h4> -->
<!--                   <div class="aa-order-summary-area"> -->
<!--                     <table class="table table-responsive"> -->
<!--                       <thead> -->
<!--                         <tr> -->
<!--                           <th>Product</th> -->
<!--                           <th>Total</th> -->
<!--                         </tr> -->
<!--                       </thead> -->
<!--                       <tbody> -->
                       
<%--                         <c:forEach var="cartList" items="${cartList}"> --%>
<!--                     <tr> -->
<%--                           <td>${cartList.productModel.productName} <strong> x  --%> 
<!-- <%--                            ${cartList.quantity} --%> -->
<!--                            </strong></td> -->
<%--                           <td>${cartList.productModel.productPrice}</td> --%>
<!--                         </tr> -->
<%--                         </c:forEach> --%>
<!--                       </tbody> -->
<!--                       <tfoot> -->
<!--                          <tr> -->
<!--                           <th>Total</th> -->
<%--                           <td>${grandtotal}</td> --%>
<!--                         </tr> -->
<!--                       </tfoot> -->
<!--                     </table> -->
<!--                   </div> -->
                  <h4><strong>Payment Method</strong></h4>
                  <div class="aa-payment-method">                    
                   <label for=""><form:radiobutton path="paymentOption" value="Cash on delivery" />Cash on Delivery</label>
                   <label for=""><form:radiobutton path="paymentOption" value="By Card" />Pay by Bank Card</label>
                  <br><br><br>  <img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark">    
                  
                    <input type="submit" value="Submit" name="_eventId_submit"  class="aa-browse-btn">                
                    <input type="submit" value="Cancel" name="_eventId_cancel" class="aa-browse-btn">                
                  
                  
<%--                   <a href="${flowExecutionUrl }&_eventId=submit">submit</a> --%>
<%--                   <a href="${flowExecutionUrl }&_eventId=cancel">cancel</a> --%>
                  
                  </div>
                </div>
              </div>
            </div>
          </form:form>
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

</body>
</html>