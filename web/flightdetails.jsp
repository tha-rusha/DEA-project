<%-- 
    Document   : flightdetails
    Created on : Oct 1, 2022, 1:44:11 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flight Details</title>
        <link rel="stylesheet" href="css/main.css"> 
       <!-- CSS only -->
<!--            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">-->
    
    <!-- footer -->
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
		    <link rel="stylesheet" href="css/footer.css">
		<!-- footer end -->
        
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
				        <a href="index.html"><img src="images/logo1.png" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="index.html">Home</a></li>
				          <li><a href="">About</a></li>		       		          
				          <li><a href="">Contact</a></li>
					  <li><a href="">Admin</a></li>
				          <li><a href="">My Account</a></li>	
				        </ul>
				      </nav>
			<!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>
			<!-- #header -->
      
 <div id="wrapper" style="padding-top:150px;padding-bottom: 150px;">
     
  <h1>Your Flight Details</h1>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
               <th><span>Airplane ID</span></th>
               <th><span>From</span></th>
               <th><span>To</span></th>
               <th><span>Start</span></th>
               <th><span>Return</span></th>
               <th><span>Adults</span></th>
                <th><span>Child</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="lalign">0001</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td class="lalign">0002</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
          <td><button type="button" class="btn btn-success">Confirm </button>
</td>
        <td><button type="button" class="btn btn-info">Edit </button>
</td>
       </tr>
    </tbody>
  </table>
 </div> 
                          <!-- Footer -->
		 <div class="footer-basic">
		        <footer>
		            <div class="social">
		            	<a href="#"><i class="icon ion-social-instagram"></i></a>
		            	<a href="#"><i class="icon ion-social-snapchat"></i></a>
		            	<a href="#"><i class="icon ion-social-twitter"></i></a>
		            	<a href="#"><i class="icon ion-social-facebook"></i></a>
		            </div>
		            <ul class="list-inline">
                                <li class="list-inline-item"><a href="index.jsp">Home</a></li>
                                <li class="list-inline-item"><a href="index.jsp">About</a></li>
                                <li class="list-inline-item"><a href="index.jsp">Contact</a></li>
		                <li class="list-inline-item"><a href="#">Terms</a></li>
		                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
		            </ul>
		            <p class="copyright" style="font-size: 16px;color: #ffffff;">© 2020 Copyright: phoenixflights.com</p>
		        </footer>
		    </div>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
                    <!--end footer-->
		</body>
</html>
