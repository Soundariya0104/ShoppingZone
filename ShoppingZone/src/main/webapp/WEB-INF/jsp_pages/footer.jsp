<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Welcome to OnlineShopping</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
.scroll-top-wrapper {
    position: fixed;
    opacity: 0;
    visibility: hidden;
	overflow: hidden;
	text-align: center;
	z-index: 99999999;
    background-color: #777777;
	color: #eeeeee;
	width: 50px;
	height: 48px;
	line-height: 48px;
	right: 30px;
	bottom: 30px;
	padding-top: 2px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
}
.scroll-top-wrapper:hover {
	background-color: #888888;
}
.scroll-top-wrapper.show {
    visibility:visible;
    cursor:pointer;
	opacity: 1.0;
}
.scroll-top-wrapper i.fa {
	line-height: inherit;
}

@import url("http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css");


footer
 {

    border-top: 5px solid #CDB380;
  
  background: #033649 none repeat scroll 0% 0%;
    
padding-top: 30px;

    margin-top: 60px;
    
clear: both;

    color: #AAA;
  
  display: block;

}


footer
 .widgettitle
 {

    margin: 0px;
  
  padding: 0px 0px 15px;

    border-bottom: medium none;

}

footer h4 
{

    color: #FFF;

}


footer ul 
{

    list-style: outside none none;

}


footer li {

    padding: 7px 0px;
  
  border-bottom: 1px dotted rgba(255, 255, 255, 0.2);

    margin: 0px;

}


footer li a
{

    color: #DDD;

}


sub-floor {
   
 color: #AAA;
    
background: #031634 none repeat scroll 0% 0%;
   
 padding: 10px 0px;

}
</style>

</head>


<body>
<script>

$(document).ready(function(){

$(function(){
 
    $(document).on( 'scroll', function(){
 
    	if ($(window).scrollTop() > 100) {
			$('.scroll-top-wrapper').addClass('show');
		} else {
			$('.scroll-top-wrapper').removeClass('show');
		}
	});
 
	$('.scroll-top-wrapper').on('click', scrollToTop);
});
 
function scrollToTop() {
	verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
	element = $('body');
	offset = element.offset();
	offsetTop = offset.top;
	$('html, body').animate({scrollTop: offsetTop}, 500, 'linear');
}

});
</script>
    <footer id="footer" class="clearfix">
    
 
 <div id="footer-widgets">



        <div class="container-fluid">



        <div id="footer-wrapper">


          <div class="row">
   
         <div class="col-sm-6 ">
      
        <div id="meta-3" class="widget widgetFooter widget_meta">
      
        <h4 class="widgettitle">Importent Page :</h4>
         
     <ul>
    		
  <li><a href="index"><i class="fa fa-home fa-fw"></i> Home</a></li>
			  
<li><a href="AboutUs"><i class="fa fa-link"></i> About Us</a></li>
			  
<li><a href="contactus"><i class="fa fa-envelope fa-fw"></i> Contact Us</a></li>
  
           </ul>
</div>      </div> <!-- end widget1 -->

         
   <div class="col-sm-6">
              	
	<div id="recent-posts-3" class="widget widgetFooter widget_recent_entries">
         
           <h4 class="widgettitle">Our social media :</h4>
        
            <ul>
			
		<li>
				
     <a href="https://www.facebook.com/search/top/?q=wall%20paints" target="_blank"><i class="fa fa-facebook"></i> Facebook</a>
					</li>

					<li>
				      
<a href="https://www.twitter.com" target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
					
</li>
					
<li>
				   
   <a href="http://www.youtube.com" target="_blank"><i class="fa fa-youtube"></i> Youtube</a>
			
	 
  </li>
			
	</ul>

		</div>     
       </div> <!-- end widget1 -->


           
                </div>        
    </div> <!-- end widget1 -->

          </div> <!-- end .row -->

   
     </div> <!-- end #footer-wrapper -->

        </div> <!-- end .container -->
      
</div> <!-- end #footer-widgets -->

   
   <div id="sub-floor">
 
       <div class="container">

  
        <div class="row">
            
<div class="col-md-4 copyright">
 Copy right for Jaffa © 2017
            </div>
          
  <div class="col-md-4 col-md-offset-4 attribution">
             Developer by  <a target="_blank" href="#">makesh maki</a> .
            </div>

          </div> <!-- end .row -->
          <div class="scroll-top-wrapper ">
  <span class="scroll-top-inner">
    <i class="fa fa-2x fa-arrow-circle-up"></i>
  </span>
</div>
        </div>
      </div>

   
 </footer>

</body>
</html>