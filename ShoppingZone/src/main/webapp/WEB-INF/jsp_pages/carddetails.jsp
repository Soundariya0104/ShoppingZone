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
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
             
              <div class="col-md-6">
                <div class="aa-myaccount-register">                 
                 <h4>Enter Your Card Details</h4>
                 <form:form action="cardpaymentsuccess" class="aa-login-form" commandName="carddetailModel">
                   
                    <label for="">Card Number</label><br>
                    <form:input type="text" placeholder="First Name" path="cardNumber" value=""/>
                    
                    <label for="">Expiration Month</label>
                    <form:select path="expDate">
    <option value="01">Jan</option>
    <option value="02">Feb</option>
    <option value="03">Mar</option>
    <option value="04">Apr</option>
    <option value="05">May</option>
    <option value="06">Jun</option>
    <option value="07">Jul</option>
    <option value="08">Aug</option>
    <option value="09">Sep</option>
    <option value="10">Oct</option>
 <option value="11">Nov</option>
    <option value="12">Dec</option>
  </form:select>
                    
                    <label for="">Year</label>
                   <form:select path="expYear">
    <option value="2017">2017</option>
    <option value="2018">2018</option>
    <option value="2019">2019</option>
    <option value="2020">2020</option>
    <option value="2021">2021</option>
    <option value="2022">2022</option>
    <option value="2023">2023</option>
    <option value="2024">2024</option>
    <option value="2025">2025</option>
    <option value="2026">2026</option>
 <option value="2027">2027</option>
    <option value="2028">2028</option>
  </form:select>  <br>
                    
                    <label for="">CVV/CVC</label>
                    <form:input type="password"  placeholder="cvv" path="cvv" value=""/>
             
                       
                    <label for="">Card Holder's Name:</label>
                    <form:input type="text"  placeholder="Name" path="cardholderName" />    
                  </form:form>  
<%--                     <a href="paymentsuccess?username=${User}"><button  class="aa-browse-btn">Make Payment</button></a>                     --%>
                     <a href="${flowExecutionUrl }&_eventId=submit"><button  class="aa-browse-btn">Make Payment</button></a>                    
                 
                  <br><br><br>
                  <span style="font-size:14px">* Fields mandatory</span> 
                </div>
              </div>
             
              </div>
              
              
              
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
    <a href="${flowExecutionUrl }&_eventId=submit?username=${$User}">submit</a>
                  <a href="${flowExecutionUrl }&_eventId=back">back</a>
               

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