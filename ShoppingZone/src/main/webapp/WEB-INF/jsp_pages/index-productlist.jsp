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
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!--new arrival area start-->
        <div class="new-arrival-area pt-70">
            <div class="container">
                <div class="row">
                   <div class="col-xs-12 text-center">
                       <div class="heading-title heading-style pos-rltv mb-50 text-left">
                           <h4 class="uppercamelcase">Enjoy your shopping from here.....</h4>
                       </div>
                   </div>
                   <div class="clearfix"></div>
                    <div class="total-new-arrival new-arrival-slider-active carsoule-btn">                           
                        <div class="col-md-3">
                            
							
							
							
							<!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="productpage"> <img alt="" src="<c:url value="/resources/images/product/01.jpg"/>"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                            <li><a href="cart?username=${User}&productId=${productList.productId}" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <h4>Adidas</h4> </div>
                                    <div class="prodcut-ratting-price">
									<div class="prodcut-ratting"> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star-o"></i> 
                                        </div>
                                        <div class="prodcut-price">
                                            <div class="new-price"> RS.490 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        
						
						
						
						
						</div>                          
                      




					  <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/03.jpg"/>">  </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <h4> Ash Stumps</h4> </div>
                                    <div class="prodcut-ratting-price">
									<div class="prodcut-ratting"> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="prodcut-price">
										
                                            <div class="new-price"> Rs.540 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                          
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                     <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/02.jpg"/>" >  </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <h4>Puma</h4> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-ratting"> 
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star-o"></i> 
                                        </div>
                                        <div class="prodcut-price">
                                            <div class="new-price"> Rs.220 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                          
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/04.jpeg"/>"> </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <h4>Kookaburra Bats</h4> </div>
                                    <div class="prodcut-ratting-price">
									<div class="prodcut-ratting"> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star-o"></i> 
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="prodcut-price">
                                            <div class="new-price"> Rs.320 </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>                          
                        <div class="col-md-3">
                            <!-- single product start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/05.jpg"/>">  </a>
                                    </div>
                                    <div class="product-icon socile-icon-tooltip text-center">
                                        <ul>
                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-text">
                                    <div class="prodcut-name"> <h4>Quisque fringilla</h4> </div>
                                    <div class="prodcut-ratting-price">
                                        <div class="prodcut-ratting"> 
                                           <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i> 
                                            <i class="fa fa-star-o"></i> </div>
                                        <div class="prodcut-price">
                                            <div class="new-price"> $220 </div>
                                            <div class="old-price"> <del>$250</del> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product end-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--new arrival area end-->
        
        <!--banner area start-->
        <div class="banner-area pt-70">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="single-banner gray-bg">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="sb-img text-center">
                                        <img src="<c:url value="/resources/images/banner/002.jpg"/>" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="sb-content mt-60">
                                        <div class="banner-text">
                                            <h5 class="lato">New Arrival</h5>
                                            <h2 class="montserrat">Cricket Kit</h2>
                                            <h3 class="montserrat">Rs.8999</h3>
                                            <div class="banner-list">
                                                <ul>
                                                    <li>Bat</li>
                                                    <li>Stumps</li>
                                                    <li>Pads & Glove</li>
													<li>Helmet</li>
                                                </ul>
                                            </div>
                                            <div class="social-icon-wraper mt-25">
                                                <div class="social-icon socile-icon-style-1">
                                                    <ul>
                                                        <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                        <li><a href="#"><i class="zmdi zmdi-favorite-outline"></i></a></li>
                                                        <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                        <li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="single-banner gray-bg">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="sb-img text-center">
                                        <img src="<c:url value="/resources/images/banner/001.jpeg"/>" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="sb-content mt-60">
                                        <div class="banner-text">
                                            <h5 class="lato">New Arrival</h5>
                                            <h2 class="montserrat">Badminton KiT</h2>
                                            <h3 class="montserrat">Rs.2899</h3>
                                            <div class="banner-list">
                                                <ul>
                                                    <li>Bat</li>
                                                    <li>Racquet</li>
                                                    <li>Net</li>
													<li>Head and Hand Bands</li>
                                                </ul>
                                            </div>
                                            <a class="btn-def btn2" href="checkout">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--banner area end-->  
        
        <!--discunt-featured-onsale-area start -->
        <div class="discunt-featured-onsale-area pt-60">
            <div class="container">
                <div class="row">
                    <div class="product-area tab-cars-style">
                        <div class="title-tab-product-category">
                            <div class="col-md-12 text-center">
                                <ul class="nav mb-40 heading-style-2" role="tablist">
                                    <li role="presentation" class="active"><a href="#newarrival" aria-controls="newarrival" role="tab" data-toggle="tab">New Arrival</a></li>
                                    <li role="presentation"><a href="#bestsellr" aria-controls="bestsellr" role="tab" data-toggle="tab">Best Seller</a></li>
                                    <li role="presentation"><a href="#specialoffer" aria-controls="specialoffer" role="tab" data-toggle="tab">Special Offer</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="content-tab-product-category">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="newarrival">
                                    <div class="total-new-arrival new-arrival-slider-active carsoule-btn">                           
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/05.jpeg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Cycling Helmet</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.220 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/06.jpeg"/>" > </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Foot Ball</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.520 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/07.jpg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Hockey sticks</h4> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> 
                                                        </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> RS.340 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/08.jpg"/>">  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Digital Stop Watch</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.290 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/09.jpeg"/>" > </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Quisque fringilla</h4> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> $220 </div>
                                                            <div class="old-price"> <del>$250</del> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane  fade in" id="bestsellr">
                                    <div class="total-new-arrival new-arrival-slider-active carsoule-btn">                           
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="product-label">
                                                        <div class="new">New</div>
                                                    </div>
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/09.jpg"/>" ></a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Glasses</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                           <i class="fa fa-star"></i> 
                                                           <i class="fa fa-star"></i> 
                                                           <i class="fa fa-star"></i> 
                                                           <i class="fa fa-star"></i> 
                                                           <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.700 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div> 
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="product-label">
                                                        <div class="new">Sale</div>
                                                    </div>
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/10.jpg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Swimming Goggles</h4> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.520 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/11.jpeg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Table Tennis</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i></div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.470 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/12.jpg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Chess Board</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i></div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.220 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                           
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/05.jpg"/>" > </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Quisque fringilla</h4> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i></div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> $220 </div>
                                                            <div class="old-price"> <del>$250</del> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane  fade in" id="specialoffer">
                                    <div class="total-new-arrival new-arrival-slider-active carsoule-btn"> 
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/13.jpeg"/>"> </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Skate Board<h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.790 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/14.jpeg"/>" > </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Scooter</h4> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.999 </div>
                                                            <div class="old-price"> <del>Rs.1499</del> </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="product-label">
                                                        <div class="new">New</div>
                                                    </div>
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/15.jpg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Boxing Helmet</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> 
                                                            <i class="fa fa-star-o"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.499 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/16.jpeg"/>" > </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Adjustable Skater</h4> </div>
                                                    <div class="prodcut-ratting-price">
													<div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> 
                                                            <i class="fa fa-star-o"></i> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> Rs.899 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>                          
                                        <div class="col-md-3">
                                            <!-- single product start-->
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <div class="product-label">
                                                        <div class="new">Sale</div>
                                                    </div>
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/02.jpg"/>" >  </a>
                                                    </div>
                                                    <div class="product-icon socile-icon-tooltip text-center">
                                                        <ul>
                                                            <li><a href="cart" data-tooltip="Add To Cart" class="add-cart" data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                            <li><a href="#" data-tooltip="Wishlist" class="w-list"><i class="fa fa-heart-o"></i></a></li>
                                                            <li><a href="#" data-tooltip="Compare" class="cpare"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <h4>Quisque fringilla</h4> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star"></i> 
                                                            <i class="fa fa-star-o"></i> 
                                                        </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> $220 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
        <!--discunt-featured-onsale-area end-->  
        
        
        
        <!--new-arrival on-sale Top-ratted area start-->
        <div class="arrival-ratted-sale-area pt-70">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-xs-12">    
                        <div class="heading-title heading-style pos-rltv mb-50 text-center">
                            <h5 class="uppercase">New Arrival</h5> 
                        </div>
                        <div class="ctg-slider-active">
                            <div class="single-ctg new-arrival-ctg">
                                <div class="single-ctg-item">
                                    <div class="row">
                                        <div class="col-sm-6">
                                           <div class="product-ctg-img pos-rltv product-overlay">
                                               <a href="single-product.html"><img src="<c:url value="/resources/images/product/17.jpeg"/>" alt=""></a>
                                           </div>
                                        </div>
                                        <div class="col-sm-6">
                                           <div class="product-ctg-content">
                                               <p>Roller Skating</p>
                                               <p class="font-bold">Rs.699</p>
                                                <div class="social-icon socile-icon-style-1 mt-15">
                                                    <ul>
                                                        <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                        <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                           </div> 
                                        </div>
                                    </div>
                                </div>
                                <div class="single-ctg-item">
                                    <div class="row">
                                        <div class="col-sm-6">
                                           <div class="product-ctg-img pos-rltv product-overlay">
                                               <a href="single-product.html"><img src="<c:url value="/resources/images/product/18.jpg"/>" alt=""></a>
                                           </div>
                                        </div>
                                        <div class="col-sm-6">
                                           <div class="product-ctg-content">
                                               <p>Cricket ball</p>
                                               <p class="font-bold">Rs.99</p>
                                                <div class="social-icon socile-icon-style-1 mt-15">
                                                    <ul>
                                                        <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                        <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                           </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-ctg new-arrival-ctg">
                            <div class="single-ctg-item">
                                <div class="row">
                                    <div class="col-sm-6">
                                       <div class="product-ctg-img pos-rltv product-overlay">
                                           <a href="single-product.html"><img src="<c:url value="/resources/images/product/19.jpeg"/>" alt=""></a>
                                       </div>
                                    </div>
                                    <div class="col-sm-6">
                                       <div class="product-ctg-content">
                                           <p>Cricket Pad</p>
                                           <p class="font-bold">Rs.369</p>
                                            <div class="social-icon socile-icon-style-1 mt-15">
                                                <ul>
                                                    <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                    <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                </ul>
                                            </div>
                                       </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="single-ctg-item">
                                <div class="row">
                                    <div class="col-sm-6">
                                       <div class="product-ctg-img pos-rltv product-overlay">
                                           <a href="single-product.html"><img src="<c:url value="/resources/images/product/19.jpeg"/>" alt=""></a>
                                       </div>
                                    </div>
                                    <div class="col-sm-6">
                                       <div class="product-ctg-content">
                                           <p>Primo Court Mid Suede</p>
                                           <p class="font-bold">$236.99</p>
                                            <div class="social-icon socile-icon-style-1 mt-15">
                                                <ul>
                                                    <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                    <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                </ul>
                                            </div>
                                       </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-ctg on-sale-ctg">
                            <div class="heading-title heading-style pos-rltv mb-50 text-center">
                                <h5 class="uppercase">On Sale</h5> 
                            </div>
                            <div class="ctg-slider-active">
                                <div class="single-ctg new-arrival-ctg">
                                    <div class="single-ctg-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                               <div class="product-ctg-img pos-rltv product-overlay">
                                                   <a href="single-product.html"><img src="<c:url value="/resources/images/product/19.jpg"/>" alt=""></a>
                                               </div>
                                            </div>
                                            <div class="col-sm-6">
                                               <div class="product-ctg-content">
                                                   <p>Cricket pad</p>
                                                   <p class="font-bold">Rs.450</p>
                                                    <div class="social-icon socile-icon-style-1 mt-15">
                                                        <ul>
                                                            <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                               </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-ctg-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                               <div class="product-ctg-img pos-rltv product-overlay">
                                                   <a href="single-product.html"><img src="<c:url value="/resources/images/product/20.jpg"/>" alt=""></a>
                                               </div>
                                            </div>
                                            <div class="col-sm-6">
                                               <div class="product-ctg-content">
                                                   <p>Cricket Helmet</p>
                                                   <p class="font-bold">Rs.699</p>
                                                    <div class="social-icon socile-icon-style-1 mt-15">
                                                        <ul>
                                                            <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                               </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-ctg new-arrival-ctg">
                                    <div class="single-ctg-item">
                                    <div class="row">
                                        <div class="col-sm-6">
                                           <div class="product-ctg-img pos-rltv product-overlay">
                                               <a href="single-product.html"><img src="<c:url value="/resources/images/product/21.jpeg"/>" alt=""></a>
                                           </div>
                                        </div>
                                        <div class="col-sm-6">
                                           <div class="product-ctg-content">
                                               <p>Primo Court Mid Suede</p>
                                               <p class="font-bold">$236.99</p>
                                                <div class="social-icon socile-icon-style-1 mt-15">
                                                    <ul>
                                                        <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                        <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                           </div> 
                                        </div>
                                    </div>
                                </div>
                                    <div class="single-ctg-item">
                                <div class="row">
                                    <div class="col-sm-6">
                                       <div class="product-ctg-img pos-rltv product-overlay">
                                           <a href="single-product.html"><img src="<c:url value="/resources/images/product/20.jpeg"/>" alt=""></a>
                                       </div>
                                    </div>
                                    <div class="col-sm-6">
                                       <div class="product-ctg-content">
                                           <p>Primo Court Mid Suede</p>
                                           <p class="font-bold">$236.99</p>
                                            <div class="social-icon socile-icon-style-1 mt-15">
                                                <ul>
                                                    <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                    <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                </ul>
                                            </div>
                                       </div> 
                                    </div>
                                </div>
                            </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-ctg top-rated-ctg">
                            <div class="heading-title heading-style pos-rltv mb-50 text-center">
                                <h5 class="uppercase">Top Rated</h5> 
                            </div>
                            <div class="ctg-slider-active">
                                <div class="single-ctg new-arrival-ctg">
                                    <div class="single-ctg-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                               <div class="product-ctg-img pos-rltv product-overlay">
                                                   <a href="single-product.html"><img src="<c:url value="/resources/images/product/21.jpeg"/>" alt=""></a>
                                               </div>
                                            </div>
                                            <div class="col-sm-6">
                                               <div class="product-ctg-content">
                                                   <p>Cycle</p>
                                                   <p class="font-bold">Rs.1999</p>
                                                    <div class="social-icon socile-icon-style-1 mt-15">
                                                        <ul>
                                                            <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                               </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-ctg-item">
                                        <div class="row">
                                            <div class="col-sm-6">
                                               <div class="product-ctg-img pos-rltv product-overlay">
                                                   <a href="single-product.html"><img src="<c:url value="/resources/images/product/22.jpg"/>" alt=""></a>
                                               </div>
                                            </div>
                                            <div class="col-sm-6">
                                               <div class="product-ctg-content">
                                                   <p>Sports suite</p>
                                                   <p class="font-bold">Rs.380</p>
                                                    <div class="social-icon socile-icon-style-1 mt-15">
                                                        <ul>
                                                            <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                               </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-ctg new-arrival-ctg">
                                    <div class="single-ctg-item">
                                <div class="row">
                                    <div class="col-sm-6">
                                       <div class="product-ctg-img pos-rltv product-overlay">
                                           <a href="single-product.html"><img src="<c:url value="/resources/images/product/15.jpg"/>" alt=""></a>
                                       </div>
                                    </div>
                                    <div class="col-sm-6">
                                       <div class="product-ctg-content">
                                           <p>Primo Court Mid Suede</p>
                                           <p class="font-bold">$236.99</p>
                                            <div class="social-icon socile-icon-style-1 mt-15">
                                                <ul>
                                                    <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                    <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                </ul>
                                            </div>
                                       </div> 
                                    </div>
                                </div>
                            </div>
                                    <div class="single-ctg-item">
                                <div class="row">
                                    <div class="col-sm-6">
                                       <div class="product-ctg-img pos-rltv product-overlay">
                                           <a href="single-product.html"><img src="<c:url value="/resources/images/product/14.jpg"/>" alt=""></a>
                                       </div>
                                    </div>
                                    <div class="col-sm-6">
                                       <div class="product-ctg-content">
                                           <p>Primo Court Mid Suede</p>
                                           <p class="font-bold">$236.99</p>
                                            <div class="social-icon socile-icon-style-1 mt-15">
                                                <ul>
                                                    <li><a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                    <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                </ul>
                                            </div>
                                       </div> 
                                    </div>
                                </div>
                            </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--new-arrival on-sale Top-ratted area end-->
        
        <!--brand area are start-->
        <div class="brand-area ptb-60">
            <div class="container">
                <div class="row">
                   <div class="total-brand">
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/01.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/02.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/03.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/04.jpg"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/05.jpg"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/06.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/01.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/02.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/03.png"/>" alt=""></a></div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-brand shadow-box"><a href="#"><img src="<c:url value="/resources/images/brand/04.jpg"/>" alt=""></a></div>
                        </div>
                </div>
            </div>
          </div>
        </div>
        <!--brand area are start-->


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