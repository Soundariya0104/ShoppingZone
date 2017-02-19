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
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>">
    <!-- User style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">  <link rel="stylesheet" href="<c:url value="/resources/css/color/skin-default.css"/>">

    
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    
    <!-- ------------------------password strength password matching-------------------------------- -->
 
<script>
$(document).ready(function() {
	$('#password').keyup(function() {
	$('#result').html(checkStrength($('#password').val()))
	})
	function checkStrength(password) {
	var strength = 0
	if (password.length < 6) {
	$('#result').removeClass()
	$('#result').addClass('short')
	return 'very short'
	}
	if (password.length > 7) strength += 1
	// If password contains both lower and uppercase characters, increase strength value.
	if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/)) strength += 1
	// If it has numbers and characters, increase strength value.
	if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) strength += 1
	// If it has one special character, increase strength value.
	if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
	// If it has two special characters, increase strength value.
	if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
	// Calculated strength value, we can return messages
	// If value is less than 2
	if (strength < 2) {
	$('#result').removeClass()
	$('#result').addClass('weak')
	return 'Weak'
	} else if (strength == 2) {
	$('#result').removeClass()
	$('#result').addClass('good')
	return 'Good'
	} else {
	$('#result').removeClass()
	$('#result').addClass('strong')
	return 'Strong'
	}
	}
	});
</script>

<!-- ------------------------username strength validating-------------------------------- -->

<script>
$(document).ready(function() {
	$('#username').keyup(function() {
	$('#resultusername').html(checkStrength($('#username').val()))
	})
	function checkStrength(username) {
	
	if (username.length <= 3) {
	$('#resultusername').removeClass()
	$('#resultusername').addClass('weak')
	return 'Enter atleast 4 Characters'
	}

	if (username.length >=4) {
	$('#resultusername').removeClass()
	$('#resultusername').addClass('short')
	return ''
	}}
	});
</script>

<!-- ------------------------password and confirm password matching-------------------------------- -->

<script>
$(document).ready(function() {
	$('#confirmpassword').keyup(function() {
	$('#resultconfirmpassword').html(check($().val()))
	})
	function check() {
		var a = document.getElementById("password").value;
        var b = document.getElementById("confirmpassword").value;
	if (a==b) {
	$('#resultconfirmpassword').removeClass()
	$('#resultconfirmpassword').addClass('short')
	return ''
	}

	if (a!=b) {
	$('#resultconfirmpassword').removeClass()
	$('#resultconfirmpassword').addClass('short')
	return 'Password doesnt match'
	}}
	});
	
</script>



<!-- ------------------------email validation-------------------------------- -->

<script>
 $(document).ready(function() {
 	$('#emailId').keyup(function() {
 	$('#resultemail').html(check($().val()))
 	})
 	function check() {
 		var a = document.getElementById("emailId").value;
 		var regExpEmail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
 	if (regExpMail.test(emailid) == false) {
 	$('#resultemail').removeClass()
 	$('#resultemail').addClass('short')
 	return 'Enter valid email address'
 	}

 	if (regExpMail.test(emailId) == true) {
 		$('#resultemail').removeClass()
 		$('#resultemail').addClass('short')
 		return ''
 		}
 }
 	});
	
 </script> 


<!-- ------------------------mobile strength validating-------------------------------- -->

<script>
$(document).ready(function() {
	$('#mobile').keyup(function() {
	$('#resultmobile').html(checkStrength($('#mobile').val()))
	})
	function checkStrength(mobile) {
	
	if (mobile.length != 10) {
	$('#resultmobile').removeClass()
	$('#resultmobile').addClass('weak')
	return 'Enter valid mobile number'
	}

	if (mobile.length ==10) {
	$('#resultmobile').removeClass()
	$('#resultmobile').addClass('short')
	return ''
	}}
	});
</script>




<style type = "text/css">
 .short{
font-weight:bold;
color:#FF0000;
font-size:smaller;
}
 .weak{
font-weight:bold;
color:red;
font-size:smaller;
}
 .good{
font-weight:bold;
color:orange;
font-size:smaller;
}
 .strong{
font-weight:bold;
color: green;
font-size:smaller;
}
</style>

</head>


<body>
 <%@ include file="header.jsp"%>
 

            
                 <h4 style="text-align:center">Registration Form</h4>
                
                
                 <h6>Register with us!!</h6>
                 <br>
	             <form:form action="registersuccess" method="post" commandName="user">
                    <label for="">Enter Your Name<span>*</span></label><br>
                    
                    <form:input type="text" title="id should have max 15 min 3 char" pattern="[A-Za-z]{3,15}" id="username" placeholder="Enter your username" path="username" required="true"/><span id="resultusername"></span><br>
                    
                    <label for="">Create Password<span>*</span></label>
                    <form:input id="password" type="password" placeholder="Enter your Password" pattern="{5,8}[a-z0-9]" path="password" required="true" /><span id="result"></span><br>
                    
                    
                    <label for="">Confirm Password<span>*</span></label>
                    <input type="password" id="confirmpassword" placeholder="Enter your confirm Password"><span id="resultconfirmpassword"></span><br>
                    
                  
                    
                    <label for="">Email<span>*</span></label>
                    <form:input type="email" placeholder="Enter your Email Address" id="emailId" path="emailId" required="true" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"/><span id="resultemail"></span><br>
                    
                    <label for="">Mobile No.<span>*</span></label>
                     <form:input type="text" id="mobile" placeholder="Enter your Mobile Number" path="mobile" pattern="[7/8/9]{10}" /> <span id="resultmobile"></span><br> 
                    
                    <label for=""> DOB  <span>*</span></label>
                    <form:input type="text" placeholder="DD/MM/YY" path="dob" />
                    
                    <label for=""> Street Name: <span>*</span></label>
                    <form:input type="text" placeholder="Enter your Street Name" path="streetname" />
                    
                    <label for="" style="width:52%;">City</label><label for="">Pin-Code</label>  <br>
                    <form:input type="text" placeholder="Enter your City Name" path="cityname" style="width:47%;"/>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <form:input type="text" placeholder="Enter your Pincode" path="pinCode" style="width:47%;"  /><br>
                    <br><br>
                    
                    <input type="submit" value="Register"/>                     
                  </form:form>
<%@ include file="footer.jsp" %>
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
