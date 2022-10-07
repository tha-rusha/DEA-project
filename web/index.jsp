<%-- 
    Document   : index
    Created on : Oct 1, 2022, 11:14:43 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		
		<title>Travel</title>

                <link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/jquery-ui.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
		    <link rel="stylesheet" href="css/footer.css">
    </head>
    <body>
        <header id="header">
				<div class="header-top">
					<div class="container">			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index.jsp">
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="index.jsp">Home</a></li>
				          <li><a href="#aboutus">About</a></li>		       		          
				          <li><a href="#contactus">Contact</a></li>
                                          <li><a href="adminlogin.jsp">Admin</a></li>
				          <li><a href="index.jsp">My Account</a></li>
                                           <li>User : <% out.println(request.getParameter("customerName")); %></li>
                                       
				        </ul>
				      </nav>
			<!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>
			<!-- #header -->
                        <%
                             session.setAttribute("userName",request.getParameter("customerName"));
                        %>
			
			<!-- start banner Area -->
			<section class="banner-area relative">
				<div class="overlay overlay-bg"></div>				
				<div class="container">
					<div class="row fullscreen align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6 banner-left">
							<h6 class="text-white">Away from monotonous life</h6>
							<h1 class="text-white">Phoenix Airline</h1>
							<p class="text-white">
								Flight or flying is the process by which an object moves through a space without contacting any planetary surface, either within an atmosphere or through the vacuum of outer space
							</p>
							<a href="signupandlogin.jsp" class="primary-btn text-uppercase">REGISTER</a>

						</div>
						<div class="col-lg-4 col-md-6 banner-right">
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <br>
							<ul class="nav nav-tabs" id="myTab" role="tablist">
                                                    
							  <li class="nav-item">
							    <a class="nav-link active" id="flight-tab" data-toggle="tab" href="#flight" role="tab" aria-controls="flight" aria-selected="true">Flights</a>
							  </li>
							  
							</ul>
                                     
							<div class="tab-content" id="myTabContent">
							  <div class="tab-pane fade show active" id="flight" role="tabpanel" aria-labelledby="flight-tab">
                                                              <form class="form-wrap" action="FlightBookingServelet" method="POST">
                                                                    <input type="text" name="form_s" class="form-control" name="name" placeholder="From " onfocus="this.placeholder = ''" onblur="this.placeholder = 'From '">									
									<input type="text" name="to_s" class="form-control" name="to" placeholder="To " onfocus="this.placeholder = ''" onblur="this.placeholder = 'To '">
									<input type="text" name="start_s" class="form-control date-picker"  placeholder="Start " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Start '">
									<input type="text" name="return_s" class="form-control date-picker"  placeholder="Return " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Return '">
									<input type="number" name="adults" min="1" max="20" class="form-control"  placeholder="Adults " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Adults '">
									<input type="number" name="child" min="1" max="20" class="form-control"  placeholder="Child " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Child '">							
                                                                        <input type="number" name="passportNumber"   class="form-control"  placeholder="Passport Number " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Passport Number '">							
									
                                                                          <input type="submit" value="Booking Flight" class="primary-btn text-uppercase" />
								</form>
							  						  	
							  </div>
							  
							</div>
						</div>
					</div>
				</div>					
			</section>
			<!-- End banner Area -->
			
			<!-- start about info -->
			<section class="about-info-area section-gap">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6 info-left">
							<img class="img-fluid" src="img/info-img.jpg" alt="">
						</div>
						<div class="col-lg-6 info-right">
							<h6>About Us</h6>
							<h1>Who We Are?</h1>
							<p>
								An airline is a company that provides air transport services for traveling passengers and freight. Airlines use aircraft to supply these services and may form partnerships or alliances with other airlines for codeshare agreements, in which they both offer and operate the same flight.
							</p>
						</div>
					</div>
				</div>	
			</section>
			<!-- end about info -->
			
		
			
			<!-- Start contact-page Area -->
			<section class="contact-page-area section-gap">
				<div class="container">
					<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6 info-right">
							<h1><center>Contact Us</center></h1>
							<br>
						</div>
					</div>
				</div>	
					<div class="row">
						<div class="col-lg-4 d-flex flex-column address-wrap">
							<div class="single-contact-address d-flex flex-row">
								<div class="contact-details">
									<h5>Colombo, Sri Lanka</h5>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-phone-handset"></span>
								</div>
								<div class="contact-details">
									<h5>011 123 5678</h5>
									<p>Monday to Friday 8am to 5 pm</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-envelope"></span>
								</div>
								<div class="contact-details">
									<h5>pheonixairline.com</h5>
									<p>Send us your messages anytime!</p>
								</div>
							</div>														
						</div>
						<div class="col-lg-8">
							<form class="form-area contact-form text-right" id="myForm" action="mail.php" method="post">
								<div class="row">	
									<div class="col-lg-6 form-group">
										<input name="name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
									
										<input name="email" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

										<input name="subject" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" class="common-input mb-20 form-control" required="" type="text">
									</div>
									<div class="col-lg-6 form-group">
										<textarea class="common-textarea form-control" name="message" placeholder="Enter Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>				
									</div>
									<div class="col-lg-12">
										<div class="alert-msg" style="text-align: left;"></div>
										<button class="genric-btn primary" style="float: right;">Send Message</button>											
									</div>
								</div>
							</form>	
						</div>
					</div>
				</div>	
			</section>
			<!-- End contact-page Area -->

			<!-- start footer Area -->

  <footer class="bg-dark text-center text-white">
  
  <div class="container p-4 pb-0">
    
    <section class="mb-4">
    
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-twitter"></i></a>
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fab fa-instagram"></i></a>

    </section>
  </div>

  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);"> © 2020 Copyright:
    <a class="text-white"> phoenixflights.com</a>
  </div>
</footer>

<!-- End footer Area -->	

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.magnific-popup.min.js"></script>						
			<script src="js/owl.carousel.min.js"></script>							
			<script src="js/main.js"></script>
    </body>
</html>
