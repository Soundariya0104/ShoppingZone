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
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  


<body>

 
 <%@ include file="header_admin.jsp"%>
  <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-8">
                <div class="aa-myaccount-register">          
  

	<h5>Supplier page </h5>

<c:choose><c:when test="${ not empty values}">
	<table>
	<!-- spring form -->
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplier">
		
					<tr>
						<td>Supplier Id:</td>
						<td><form:input type="text"
								value="${values.getSupplierId() }" path="supplierId"  disabled="true" readonly="true" /></td>
					</tr>
					<tr>
						<td>Supplier Name:</td>
						<td><form:input type="text"
								value="${values.getSupplierName()}" path="supplierName" /></td>
					<tr><td>Supplier Details:</td>
						<td><form:input type="text"
								value="${values.getSupplierDetails()}" path="supplierDetails" />
						</td>
					</tr>
		<tr><td>			<input type="submit" style="color:black;" value="Edit supplier"/></td></tr>
		</form:form></table>
				</c:when>
				<c:otherwise><table>
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplier">
	
			<tr>
						<td>Supplier Id:</td>
						<td><form:input type="text"
								placeholder="enter the supplier id" path="supplierId" /></td>
					</tr>
					<tr>
						<td>Supplier Name:</td>
						<td><form:input type="text"
								placeholder="enter the suplier name" path="supplierName" /></td>
					<tr><td>Supplier details:</td>
						<td><form:input type="text"
placeholder="enter the supplierdetails" path="supplierDetails" />
						</td>
					</tr>
		<tr><td>			<input type="submit" style="color:black;" value="Add supplier"></td></tr>
		</form:form>
				</table>
					</c:otherwise>
			</c:choose>
	<br>
	<br>
	<strong>Supplier List</strong>
	<c:if test="${not empty list}">

		<table style="border: 1px solid black;">
			<tr style="border: 1px solid black;">
				<th>Supplier Id</th>
				<th>Supplier Name</th>
				<th>Supplier Details</th>
				<th>Options</th>
			</tr>
			<c:forEach var="listValue" items="${list}">
				<tr>
					<td>${listValue.supplierId}</td>
					<td>${listValue.supplierName}</td>
					<td>${listValue.supplierDetails}</td>
					<td><form action="deletesupplier">
							<button name="supplierId" type="submit" style="color:black;"
								value=${listValue.supplierId}>Delete</button>
						</form></td>
					<td><form action="editsupplier">
							<button name="supplierId" type="submit" style="color:black;"
								value=${listValue.supplierId} >Edit</button>
						</form></td>
				</tr>
			</c:forEach>
		</table>

	</c:if>
</div>
</div></div></div></div></div></section>
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
    </div>
    </body>
    </html>