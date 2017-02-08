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
    <script src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>

<body>
  <c:forEach var="listValue" items="${values}">
                 
                  
                  </c:forEach>
<%@ include file="header.jsp" %>



        <!--breadcumb area start -->
        <div class="breadcumb-area breadcumb-2 overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>Shop Details</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index">Home</a></li>
                    <li class="active">Shop List</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!--shop main area are start-->
        <div class="shop-main-area ptb-70">
            <div class="container">
                <div class="row">
                    <!--shop sidebar start-->
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="row">
                            <div class="shop-sidebar">
                               <!--single aside start-->
                                <aside class="single-aside search-aside search-box">
                                    <form action="#">
                                        <div class="input-box">
                                            <input class="single-input" placeholder="Search...." type="text">
                                            <button class="src-btn sb-2"><i class="fa fa-search"></i></button>
                                        </div>
                                    </form>
                                 </aside>
                                <!--single aside end-->
                                
                                <!--single aside start-->
                                <aside class="single-aside catagories-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">categories</h5> 
                                    </div>
                                    <div id="cat-treeview" class="product-cat">
                                        <ul>
                                            <li class="closed"><a href="#">Men (05)</a>
                                                <ul>
                                                    <li><a href="#">T-Shirt</a></li>
                                                    </ul>
                                             </li>
                                        </ul>
                                    </div>
                                </aside>
                                <!--single aside end-->
                                
                                <!--single aside start-->
                                <aside class="single-aside price-aside fix">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">price</h5> 
                                    </div>
                                    <div class="price_filter">
                                        <div id="slider-range"></div>
                                        <div class="price_slider_amount">
                                            <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                            <input type="submit" value="Filter" /> 
                                        </div>
                                    </div>
                                </aside>
                                <!--single aside end-->
                                
                                <!--single aside start-->
                                <aside class="single-aside product-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">Recent Product</h5> 
                                    </div>
                                    <div class="recent-prodcut-wraper total-rectnt-slider">
                                        <div class="single-rectnt-slider">
                                            <!-- single product start-->
                                            <div class="single-product recent-single-product">
                                                <div class="product-img">
                                                    <div class="single-prodcut-img  product-overlay pos-rltv">
                                                        <a href="single-product.html"> <img alt="" src="<c:url value="/resources/images/product/rp01.jpg"/>" class="primary-image"> <img alt="" src="images/product/rp02.jpg" class="secondary-image"> </a>
                                                    </div>
                                                </div>
                                                <div class="product-text">
                                                    <div class="prodcut-name"> <a href="single-product.html">Copenhagen Spitfire Chair</a> </div>
                                                    <div class="prodcut-ratting-price">
                                                        <div class="prodcut-ratting"> <a href="#"><i class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star-o"></i></a> </div>
                                                        <div class="prodcut-price">
                                                            <div class="new-price"> $220 </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- single product end-->
                                           
                                        </div>
                                    </div>

                                </aside>
                                <!--single aside end-->
                                
                            </div>
                        </div>
                    </div>
                    <!--shop sidebar end-->
                    
                    <!--main-shop-product start-->
                    <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="shop-wraper">
                          <div class="col-xs-12">
                               <div class="shop-area-top">
                                  <div class="row">
                                       <div class="col-lg-6 col-md-9 col-sm-9 col-xs-12">
                                       <div class="sort product-show">
                                           <label>View</label>
                                            <select id="input-amount">
                                              <option value="volvo">10</option>
                                              <option value="saab">15</option>
                                              <option value="vw">20</option>
                                              <option value="audi" selected>25</option>
                                            </select>
                                        </div>
                                        
                                    </div>
                                       <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <div class="list-grid-view text-center">
                                            <ul class="nav" role="tablist">
                                                <li role="presentation"  class=""><a href="#grid" aria-controls="grid" role="tab" data-toggle="tab"><i class="zmdi zmdi-widgets"></i></a></li>
                                                <li role="presentation" class="active"><a href="#list" aria-controls="list" role="tab" data-toggle="tab"><i class="zmdi zmdi-view-list-alt"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                       <div class="col-lg-3 hidden-md hidden-sm hidden-xs">
                                        <div class="total-showing text-right">
                                            Showing - <span>10</span> to <span>18</span>  Of  Total <span>36</span>
                                        </div>
                                    </div>
                                   </div>
                               </div>
                           </div>
                       <div class="clearfix"></div>
                       <div class="shop-total-product-area clearfix mt-35">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!--tab grid are start-->
                            <div role="tabpanel" class="tab-pane fade in" id="grid">
                                <div class="total-shop-product-grid">
        
        
                  
                                    <div class="col-md-4 col-sm-6 item">
                                       


									   <!-- single product start-->
 
                    <c:forEach var="listValue" items="${values}">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <div class="product-label red">
                                                    <div class="new">New</div>
                                                </div>
                                                <div class="single-prodcut-img  product-overlay pos-rltv">
                                                    <a href="productpage"> <img alt="" src="<c:url value="/resources/images/product/01.jpg"/>" > </a>
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
                                                <div class="prodcut-name"> <a href="single-product.html">${listValue.productName}</a> </div>
                                                <div class="prodcut-ratting-price">
                                                    <div class="prodcut-price">
                                                        <div class="new-price"> ${listValue.productPrice} </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
 </c:forEach>                                       <!-- single product end-->
                                    </div>    
                                </div>
                            </div>
                            <!--shop grid are end-->
                          
                            
                            <!--shop product list start-->
                            <div role="tabpanel" class="tab-pane  fade in active" id="list">
                                <div class="total-shop-product-list">
                                    <div class="col-md-12 item">
                                        <!-- single product start-->
                                        <div class="single-product single-product-list">
                                            <div class="product-img">
                                                <div class="product-label red">
                                                    <div class="new">Sale</div>
                                                </div>
                                                <div class="single-prodcut-img  product-overlay pos-rltv">
                                                    <a href="productpage"> <img alt="" src="<c:url value="/resources/images/product/02.jpg"/>" >  </a>
                                                </div>
                                            </div>
                                            <div class="product-text prodcut-text-list fix">
                                                <div class="prodcut-name list-name montserrat"> <a href="single-product.html">Magnetic Force Bralette</a> </div>
                                                <div class="prodcut-ratting-price">
                                                    <div class="prodcut-ratting list-ratting">  
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                        <a href="#"><i class="fa fa-star-o"></i></a> 
                                                    </div>
                                                    <div class="prodcut-price list-price">
                                                        <div class="new-price"> $220 </div>
                                                        <div class="old-price"> <del>$250</del> </div>
                                                    </div>
                                                </div>
                                                <div class="list-product-content">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dolor tellus, bibendum eu lacus ids suscipit 
                                                    blandit tortor. Aenean eget posuere augue, vel molestie turpis. Ut tempor mauris ut justo luctus aliquam. Nullam 
                                                    id quam vitae odio scelerisque ultrices.</p>
                                                </div>
                                                <div class="social-icon-wraper mt-25">
                                                    <div class="social-icon socile-icon-style-1">
                                                        <ul>
                                                            <li><a href="#"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                                            <li><a href="#"><i class="zmdi zmdi-favorite-outline"></i></a></li>
                                                            <li><a href="#" data-tooltip="Quick View" class="q-view" data-toggle="modal" data-target=".modal" tabindex="0"><i class="zmdi zmdi-eye"></i></a></li>
                                                            <li><a href="#"><i class="zmdi zmdi-repeat"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single product end--></div>  
                                </div>
                            </div>
                            <!--shop product list end-->
                            <!--pagination start-->
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="pagination-btn text-center">
                                    <ul class="page-numbers">
                                       <li><a href="#" class="next page-numbers"><i class="zmdi zmdi-long-arrow-left"></i></a></li>
                                        <li><span class="page-numbers current">1</span></li>
                                        <li><a href="#" class="page-numbers">2</a></li>
                                        <li><a href="#" class="page-numbers">3</a></li>
                                        <li><a href="#" class="next page-numbers"><i class="zmdi zmdi-long-arrow-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--pagination end-->
                            </div>
                       </div>
                    </div>
                    </div>
                    <!--main-shop-product start-->
                </div>
            </div>
        </div>
        <!--shop main area are end-->
        








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