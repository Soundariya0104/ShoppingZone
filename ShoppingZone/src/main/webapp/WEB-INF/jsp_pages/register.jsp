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
	<%@ include file="header.jsp"%>

	<div class="container">
		<div class="jumbotron">

			<h3 style="text-align: center">Registration Form</h3>


			<h5>Register with us!!</h5>
			<br>
			<form:form action="registersuccess" method="post" commandName="user">
				<label for="">Enter Your Name<span>*</span></label>
				<br>

				<form:input type="text" title="id should have max 15 min 3 char"
					pattern="[A-Za-z]{3,15}" id="username"
					placeholder="Enter your username" path="username" required="true"
					style="background-color:white" />
				<br>

				<label for="">Create Password<span>*</span></label>
				<form:input id="password" type="password"
					placeholder="Enter your Password"
					style="background-color:white" path="password" required="true" />
			
				<br>


				<label for="">Confirm Password<span>*</span></label>
				<input type="password" id="confirmpassword"
					placeholder="Enter your confirm Password"
					style="background-color: white">
			
				<br>



				<label for="">Email<span>*</span></label>
				<form:input type="email" placeholder="Enter your Email Address"
					id="emailId" path="emailId" required="true"
					style="border: 0px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;
 background-color:white" />
				<br>

				<label for="">Mobile No.<span>*</span></label>
				<form:input type="text" id="mobile"
					placeholder="Enter your Mobile Number" path="mobile"
					title="mobile number should start with either 7/8/9 and should contain 10 digits"
					pattern="[789][0-9]{9}" required="true"
					style="background-color:white" />
				<br>

				<label for=""> DOB <span>*</span></label>
				<form:input type="text" placeholder="Enter your date of birth"
					id="dob" style="background-color:white"
					pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}"
					title="DOB should be in the format DD/MM/YYYY" path="dob"
					required="true" />

				<label for=""> Street Name: <span>*</span></label>
				<form:input type="text" placeholder="Enter your Street Name"
					path="streetname" required="true" style="background-color:white" />

				<label for="" style="width: 52%;">City<span>*</span></label>
				<label for="">Pin-Code<span>*</span></label>
				<br>
				<form:input type="text" placeholder="Enter your City Name"
					path="cityname" style="width:47%;background-color:white"
					required="true" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <form:input type="text"
					placeholder="Enter your Pincode" path="pinCode"
					pattern="[6][0-9]{5}"
					title="pincode should contain 6 digits and should be valid ex:6XXXXX"
					style="width:47%;background-color:white" required="true" />
				<br>
				<br>
				<br>

				<input type="submit" style="background-color: white"
					value="Register" />
			</form:form><br>
			<h5>Already user of this website<a href="loginpage" style="color:red"> <u>LOGIN</u></a> here...</h5>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
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
