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
		<title>flight details</title>

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
				          <li><a href="index.html">Home</a></li>
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
                        
                        <table id="keywords" cellspacing="0" cellpadding="0" style="position: absolute;padding-top: 100px">
    <thead>
      <tr>
               <th><span>Airplane ID</span></th>
               <th><span>From</span></th>
               <th><span>TO</span></th>
               <th><span>Start</span></th>
               <th><span>Return</span></th>
               <th><span>Adults</span></th>
               <th><span>Child</span></th>
      </tr>
    </thead>
    
    <tbody>
      <tr>
        <td class="lalign">#</td>
        <td name="form_s"><% out.println(request.getParameter("form_s")); %></td>
        <td><% out.println(request.getParameter("to_s")); %></td>
        <td><% out.println(request.getParameter("start_s")); %></td>
        <td><% out.println(request.getParameter("return_s")); %></td>
        <td><% out.println(request.getParameter("adults")); %></td>
        <td><% out.println(request.getParameter("child")); %></td>
        
      </tr>
      <tr>
          <td><button type="submit" class="btn btn-success"><a href="PaymentDetails.jsp" style="color: white">Confirm</a></button>
</td>
        <td><button type="submit" class="btn btn-info">Edit </button>
</td>
       </tr>
    </tbody>
    
  </table>
			
			
			
		
			
			
			

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















<!------------------------------------------------------------------------------------------------------------->












