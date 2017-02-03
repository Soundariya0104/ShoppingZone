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

    <link rel="apple-touch-icon" href="<c:url value="resources/images/icons/favicon.ico"/>">
    <!-- Place favicon.ico in the root directory -->

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="<c:url value="resources/css/core.css"/>">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="<c:url value="resources/css/shortcode/shortcodes.css"/>">
    <!-- Theme main style -->
    <link rel="stylesheet" href="<c:url value="resources/style.css"/>">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<c:url value="resources/css/responsive.css"/>">
    <!-- User style -->
    <link rel="stylesheet" href="<c:url value="resources/css/custom.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/css/color/skin-default.css"/>">

    
    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper home-one">
    <!--slider area start-->
        <div class="slider-area pos-rltv carosule-pagi cp-line">
            <div class="active-slider">
                <div class="single-slider pos-rltv">
                    <div class="slider-img"><img src="<c:url value="/resources/images/slider/slider01.jpeg"/>" alt=""></div>
                    <div class="slider-content pos-abs">
                        <h4>Best Collection</h4>
                        <h1 class="uppercase pos-rltv underline">Collections of Swimming</h1>
                        <a href="#" class="btn-def btn-white">Shop Now</a>
                    </div>
                </div>
                <div class="single-slider pos-rltv">
                    <div class="slider-img"><img src="<c:url value="/resources/images/slider/slider02.jpeg"/> "alt=""></div>
                    <div class="slider-content pos-abs">
                        <h4>Best Collection</h4>
                        <h1 class="uppercase pos-rltv underline">Collections of Cycling</h1>
                        <a href="#" class="btn-def btn-white">Shop Now</a>
                    </div>
                </div>
                <div class="single-slider pos-rltv">
                    <div class="slider-img"><img src="<c:url value="/resources/images/slider/slider03.jpg"/>" alt=""></div>
                    <div class="slider-content pos-abs">
                        <h4>Best Collection</h4>
                        <h1 class="uppercase pos-rltv underline">Collections of Ice Hockey</h1>
                        <a href="#" class="btn-def btn-white">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
        <!--slider area start-->
        </div>
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