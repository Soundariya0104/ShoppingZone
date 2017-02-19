<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<%@ include file="header.jsp" %>


<!-- product category -->
  <section id="aa-product-details">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-product-details-area">
            <div class="aa-product-details-content">
              <div class="row">
                <!-- Modal view slider -->
                <div class="col-md-5 col-sm-5 col-xs-12">                              
                  <div class="aa-product-view-slider">                                
                    <div id="demo-1" class="simpleLens-gallery-container">
                      <div class="simpleLens-container">
                        <div class="simpleLens-big-image-container"><a data-lens-image="<c:url value="/resources/images/product/${productbyId.productId }.jpeg"/>" class="simpleLens-lens-image"><img src="<c:url value="/resources/images/product/${productbyId.productId }.jpeg"/>" class="simpleLens-big-image"></a></div>
                      </div>
                      <!-- <div class="simpleLens-thumbnails-container">
                          <a data-big-image="img/view-slider/medium/polo-shirt-1.png" data-lens-image="img/view-slider/large/polo-shirt-1.png" class="simpleLens-thumbnail-wrapper" href="#">
                            <img src="img/view-slider/thumbnail/polo-shirt-1.png">
                          </a>                                    
                          <a data-big-image="img/view-slider/medium/polo-shirt-3.png" data-lens-image="img/view-slider/large/polo-shirt-3.png" class="simpleLens-thumbnail-wrapper" href="#">
                            <img src="img/view-slider/thumbnail/polo-shirt-3.png">
                          </a>
                          <a data-big-image="img/view-slider/medium/polo-shirt-4.png" data-lens-image="img/view-slider/large/polo-shirt-4.png" class="simpleLens-thumbnail-wrapper" href="#">
                            <img src="img/view-slider/thumbnail/polo-shirt-4.png">
                          </a>
                      </div> -->
                    </div>
                  </div>
                </div>
                <!-- Modal view content -->
                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="aa-product-view-content">
                    <h3>${productbyId.productName}</h3>
                    <div class="aa-price-block">
                      <span class="aa-product-view-price"><i class="fa fa-inr"></i> ${productbyId.productPrice}/-</span>
                      <p class="aa-product-avilability">Availability: <span>15</span></p>
                    </div>
                    Product details:<p>${productbyId.productDescription}</p>
                    <div class="aa-prod-quantity">
      
<form action="addtocart">
  Quantity:
  <input type="number" name="quantity" value="1" min="1" max="5"><br>
<input type="hidden" name="username" value="${User}">
<input type="hidden" name="productId" value="${productbyId.productId }">      
    <p class="aa-prod-category">
                        Category: <a href="categorypage?categoryId=${category.categoryId}">${category.categoryName }</a>
                      </p>
                    </div>

                    <div class="aa-prod-view-bottom">
<%--                       <a class="aa-add-to-cart-btn" href="addtocart?username=${User}&productId=${productbyId.productId}&quantity="quantity">Add To Cart</a> --%>
                   
  <input class="aa-add-to-cart-btn" type="submit" value="Add to cart">
</form>
<!--                       <a class="aa-add-to-cart-btn" href="buynow">Buy Now</a> -->
                   </div> </div></div>
                  </div>
                </div>
              </div>
            </div>
            
            </div>
            
              <!-- Related product -->
            <div class="aa-product-related-item">
              
              <ul class="aa-product-catg aa-related-item-slider">
               
                <c:forEach var="productList" items="${productList}">
                
                <!-- start single product item -->
                <li>
                  <figure>
                    <a class="aa-product-img" href="productpage?productId=${productList.productId}"><img src="<c:url value="/resources/product/${productList.productId }.jpeg"/>" style="height:250px;width:250px" alt="${productList.productId}"></a>
                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                     <figcaption>
                      <h4 class="aa-product-title"><a href="#">${productList.productName}</a></h4>
                      <span class="aa-product-price"><i class="fa fa-inr"></i>${productList.productPrice}</span>
                    </figcaption>
                  </figure>                     
                  <div class="aa-product-hvr-content">
<!--                     <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>                             -->
                  </div>
                </li> </c:forEach>
                             </ul>
             
             
             
             
             
              <!-- quick view modal -->                  
              <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">                      
                    <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <div class="row">
                        <!-- Modal view slider -->
                        <div class="col-md-6 col-sm-6 col-xs-12">                              
                          <div class="aa-product-view-slider">                                
                            <div class="simpleLens-gallery-container" id="demo-1">
<!--                               <div class="simpleLens-container"> -->
<!--                                   <div class="simpleLens-big-image-container"> -->
<!--                                       <a class="simpleLens-lens-image"> -->
<!--                                           <img src="img/view-slider/medium/polo-shirt-1.png" class="simpleLens-big-image"> -->
<!--                                       </a> -->
<!--                                   </div> -->
<!--                               </div> -->
<!--                               <div class="simpleLens-thumbnails-container"> -->
<!--                                   <a href="#" class="simpleLens-thumbnail-wrapper" -->
<%--                                      data-big-image="<c:url value="/resources/product/${productList.productId }.png"/>"> --%>
<%--                                       <img src="<c:url value="/resources/product/${productList.productId }.png"/>"> --%>
<!--                                   </a>                                     -->
<!--                                   <a href="#" class="simpleLens-thumbnail-wrapper" -->
<!--                                      data-lens-image="img/view-slider/large/polo-shirt-3.png" -->
<!--                                      data-big-image="img/view-slider/medium/polo-shirt-3.png"> -->
<!--                                       <img src="img/view-slider/thumbnail/polo-shirt-3.png"> -->
<!--                                   </a> -->

<!--                                   <a href="#" class="simpleLens-thumbnail-wrapper" -->
<!--                                      data-lens-image="img/view-slider/large/polo-shirt-4.png" -->
<!--                                      data-big-image="img/view-slider/medium/polo-shirt-4.png"> -->
<!--                                       <img src="img/view-slider/thumbnail/polo-shirt-4.png"> -->
<!--                                   </a> -->
                              </div>
                            </div>
                          </div>
                        </div>
<!--                         Modal view content -->
<!--                         <div class="col-md-6 col-sm-6 col-xs-12"> -->
<!--                           <div class="aa-product-view-content"> -->
<!--                             <h3>$productList.productName</h3> -->
<!--                             <div class="aa-price-block"> -->
<%--                               <span class="aa-product-view-price">${productList.productPrice}</span> --%>
<!--                               <p class="aa-product-avilability">Avilability: <span>In stock</span></p> -->
<!--                             </div> -->
<!--                             <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p> -->
                           
<!--                             <div class="aa-prod-quantity"> -->
<!--                               <p class="aa-prod-category"> -->
<!--                                 Category: <a href="#">Polo T-Shirt</a> -->
<!--                               </p> -->
<!--                             </div> -->
<!--                             <div class="aa-prod-view-bottom"> -->
<!--                               <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a> -->
<!--                               <a href="#" class="aa-add-to-cart-btn">View Details</a> -->
<!--                             </div> -->
<!--                           </div> -->
<!--                         </div> -->
<!--                       </div> -->
<!--                     </div>                         -->
<!--                   </div>/.modal-content -->
<!--                 </div>/.modal-dialog -->
              </div>
              <!-- / quick view modal -->   
            </div>  
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / product category -->
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