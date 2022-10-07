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
<<<<<<< HEAD
		<title>Travel</title>

=======
		<title>flight details</title>
                <link rel="stylesheet" href="flightdetails.css"/>
>>>>>>> 89b9d6d7008f04b32633ac60cd2099926f8e72ec
                <link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/jquery-ui.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
		    <link rel="stylesheet" href="css/footer.css">
    </head>
    
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
				          <li><a href="">About</a></li>		       		          
				          <li><a href="">Contact</a></li>
                                          <li><a href="#">My Account</a></li>	
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
                            <div id="wrapper" style="height: 150px">
     
  
  
  
 </div> 					
			</section>
			<!-- End banner Area -->
                        
<<<<<<< HEAD
                        <table class="table" cellspacing="0" cellpadding="0" style="position: absolute;padding-top: 100px">
=======
                  <table id="keywords" cellspacing="0" cellpadding="0" style="position: absolute;padding-top: 100px">
>>>>>>> 89b9d6d7008f04b32633ac60cd2099926f8e72ec
    <thead>
        <tr style="background: #002752;color: white">
               <th scope="col"><span>Airplane ID</span></th>
               <th scope="col"><span>From</span></th>
               <th scope="col"><span>TO</span></th>
               <th scope="col"><span>Start</span></th>
               <th scope="col"><span>Return</span></th>
               <th scope="col"><span>Adults</span></th>
               <th scope="col"><span>Child</span></th>
      </tr>
    </thead>
    
    <tbody>
      <tr>
        <td class="lalign">#</td>
        <td class="lalign"><% out.println(request.getParameter("form_s")); %></td>
        <td class="lalign"><% out.println(request.getParameter("to_s")); %></td>
        <td class="lalign"><% out.println(request.getParameter("start_s")); %></td>
        <td class="lalign"><% out.println(request.getParameter("return_s")); %></td>
        <td class="lalign"><% out.println(request.getParameter("adults")); %></td>
        <td class="lalign"><% out.println(request.getParameter("child")); %></td>
        
      </tr>
      <tr>
          <td></td>
          <td></td>
          <td></td>
          <td><button type="submit" class="btn btn-danger"><a href="PaymentDetails.jsp" style="color: white">Confirm</a></button>
</td>
<td></td>
<td></td>
<td></td>

       </tr>
    </tbody>
    
  </table>
<<<<<<< HEAD
			
			<!-- start about info -->
                        <section class="about-info-area section-gap" style="height: 180px">
                            <div>
                                
                            </div>
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6 info-left">
							<img class="img-fluid" src="img/info-img.jpg" alt="">
						</div>
						<div class="col-lg-6 info-right">
							
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
=======
		
			
>>>>>>> 89b9d6d7008f04b32633ac60cd2099926f8e72ec

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.magnific-popup.min.js"></script>						
			<script src="js/owl.carousel.min.js"></script>							
			<script src="js/main.js"></script>
    
</html>
