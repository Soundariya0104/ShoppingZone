<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>Welcome to Peinto</title>
  <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootst3rapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body  background="http://www.pixelstalk.net/wp-content/uploads/2016/07/Free-Desktop-Plain-Images.jpg">
<center>
 <h1><img src="http://logo-city.org/data_images/5288/595/30675.png" height="150" width="150"/><b> DESIGN WORLD </b></h1>
</center>
<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
 <li class="active"><a href="index">Home</a></li>
         <li><a href="ccategories">Categories</a></li>
       <li><a href="Contact">Contactus</a></li>
      <li><a href="Aboutus">Aboutus</a></li>
     
      
      </li>
    </ul>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${not empty successlogin}">
				<li><a href="Cart">my cart <span
						class="glyphicon glyphicon-shopping-cart"></span></a></li>
				<li><a href="Logout">Logout <span
						class="glyphicon glyphicon-log-out"></span></a></li>
			</c:if>
			<c:if test="${empty successlogin}">
				<li><a href="Register">Signup <span
						class="glyphicon glyphicon-user"></span></a></li>
				<li><a href="Login">Login <span
						class="glyphicon glyphicon-log-in"></span></a></li>
			</c:if>
		</ul>
	</div>
	</nav> 
</header>
</body>
</html>
