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



      
</head>
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
<h4>Category page</h4>
<c:choose><c:when test="${ not empty values}">
	<!-- spring form -->
	
	<form:form action="addcategory" method="get" commandName="category">
		
					
						<label for="">Category Id:</label>
						<form:input type="text"
								value="${values.getCategoryId() }" path="categoryId"   disabled="true" readonly="true" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />					
						<label for="">Category Name:</label>
						<form:input type="text"
								value="${values.getCategoryName()}" path="categoryName" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
							<button class="aa-browse-btn" type="submit" style="color:black;">Edit Category</button>
		</form:form>
				</c:when>
				<c:otherwise>
	<c:url var="action" value="/addcategory"></c:url>
	<form:form action="${action}" method="get" commandName="category">
	
			
						<label for="">Category Id:</label>
					<form:input type="text"
								placeholder="enter the category id" path="categoryId" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
					
						<label for="">Category Name:</label>
						<form:input type="text"
								placeholder="enter the suplier name" path="categoryName" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
							<button class="aa-browse-btn" type="submit" style="color:black;">Add Category</button>
		</form:form>
				
					</c:otherwise>
			</c:choose>

</div></div></div></div></div></div></div></section>
<!-- ---------------------------------------------Display category list--------------------------------------------------------- -->

 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
			<div class="page-header"><h3><strong>Category List</strong></h3></div>
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
				<th>Category Id</th>
				<th>CategoryName</th>
				<th colspan="2">Options</th>
			</tr></thead>
			<tbody>
			<c:forEach var="listValue" items="${list}">
				<tr>
					<td>${listValue.categoryId}</td>
					<td>${listValue.categoryName}</td>
					<td style="border-right:white"><form action="deletecategory"> <button name="categoryId" type="submit" style="color:black;" ${listValue.categoryId}>Delete</button></form></td>
					<td><form action="editcategory"><button name="categoryId" type="submit" style="color:black;" value=${listValue.categoryId}>Edit</button></form></td>
					</tr>
					</c:forEach>
					    </tbody>
                  </table>
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