<%-- 
    Document   : admin
    Created on : Oct 5, 2022, 11:50:41 PM
    Author     : tharu
--%>
<%@page import="lk.phoenixairline.model.FlightBooking"%>
<%@page import="java.util.List"%>
<%@page import="lk.phoenixairline.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>

			<!--CSS-->
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/jquery-ui.css">

		<!-- footer -->
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
		    <link rel="stylesheet" href="css/footer.css">
		<!-- footer end -->

		<!-- CSS End -->

		<!-- Js -->
		<script type="text/javascript">

				function switchSection(btn){
                                    console.log(btn);
					var info = document.getElementById("infoSec");
					var flight = document.getElementById("flightSec");
					var ticket = document.getElementById("ticketSec");
					var staff = document.getElementById("staffSec");

					if(btn == "btnInfo"){
						info.style.display = "block";
						flight.style.display = "none";
						ticket.style.display = "none";
						staff.style.display = "none";
					}else if(btn =="btnFlight"){
						info.style.display = "none";
						flight.style.display = "block";
						ticket.style.display = "none";
						staff.style.display = "none";
					}else if(btn == "btnTicket"){
						info.style.display = "none";
						flight.style.display = "none";
						ticket.style.display = "block";
						staff.style.display = "none";
					}else if(btn == "btnStaff"){
						info.style.display = "none";
						flight.style.display = "none";
						ticket.style.display = "none";
						staff.style.display = "block";
					}else{
                                            info.style.display = "none";
						flight.style.display = "none";
						ticket.style.display = "none";
						staff.style.display = "none";
                                        }
				}
		</script>
		<!-- Js End -->

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
				          <li><a href="index.jsp">Home</a></li>
				          <li><a href="">About</a></li>		       		          
				          <li><a href="">Contact</a></li>
						  <li><a href="">My Account</a></li>	
				        </ul>
				      </nav>
                                            
			<!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>
			<!-- #header -->
			<!-- start banner Area -->
                        <section class="banner-area relative" style="padding-top: 100px;padding-bottom: 100px;">
				<br><br>
				<div class="overlay overlay-bg"></div>				
				<div class="container">
					<div class="row fullscreen align-items-center justify-content-between">

						<!-- <div class="col-lg-4 col-md-6 banner-right"> -->
						<div class="col-lg-4 info-left">

							<div style="height: 550px; background-color: white; border-radius: 25px;">
								<table style="margin-left:auto;margin-right:auto;">
									<tr>
										<td style="padding-top: 25px"><img src="images/img_avatar.png" alt="Avatar" width="150px;" style="border-radius: 50%;"></td>
									</tr>
									<tr>
										<td style="padding-top: 20px;">
											<h4 style="text-align: center;">Admin</h4>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
                                                                                    <form action="ClientDetailsServelet" method="post">
                                                                                        <button class="button" style="height:50px;width:180px;background-color: #0be03d;" onclick="switchSection(this.id)" id="btnInfo">CLIENT DETAILS</button>
                                                                                    </form>
                                                                                    
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
                                                                                    <form action="FlightDetailsServelet" method="post">
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" onclick="switchSection(this.id)" id="btnFlight">FLIGHT DETAILS</button>
                                                                                        </form>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
                                                                                    <form action="TicketDetailsServelet">
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" id="btnTicket" onclick="switchSection(this.id)">TICKET DETAILS</button>
                                                                                        </form>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
                                                                                    <form action="StaffDetailsServelet" method="post">
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" id="btnStaff" onclick="switchSection(this.id)">STAFF DETAILS</button>
                                                                                        </form>
										</td>
									</tr>
								</table>

							</div>
						</div>
						<!-- <div class="col-lg-6 col-md-6 banner-left"> -->
							<!-- banner area 1 -->
						 <div class="col-lg-8 info-right" id="myDIV">

							 <div style="height: 550px; background-color: white; border-radius: 25px;">
									<br>
<%
                             
                           List<Customer>list=(List<Customer>) session.getAttribute("listUser");
                           
                         %>
                         <table border="1">
                             <tr>
                                 <th>Customer Name</th>
                                 <th>Email</th>
                                 <th>Passport No</th>
                                 <th>Address</th>
                                 <th>Mobile</th>
                                 <th>Gender</th>
                             </tr>
                             
                            <%
                       try{
                    for (int i = 0; i < list.size(); i++) {
                         %>
                         <tr>
                             <td><% out.print(list.get(i).getCustomerName()); %></td>
                             <td><% out.print(list.get(i).getEmail()); %></td>
                             <td><% out.print(list.get(i).getPassportNumber()); %></td>
                             <td><% out.print(list.get(i).getAddress()); %></td>
                             <td><% out.print(list.get(i).getMobile()); %></td>
                             <td><% out.print(list.get(i).getGender()); %></td>
                         </tr>
                      
                         
                         <%
                            }
                            }catch(Exception  e){
                            
                            }
                        %>
                            </table>    
   
								
							 </div>
	
						</div>
					</div>
				</div>					
			</section>

		</form></tr></form></tr></table></tr></table></div></form></tr></form></tr></table></tr></table></div></form></tr></form></tr></table></tr></table></div></div></div></div></div></section>
			<!-- End banner Area -->


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
		                <li class="list-inline-item"><a href="#">Home</a></li>
		                <li class="list-inline-item"><a href="#">About</a></li>
		                <li class="list-inline-item"><a href="#">Contact</a></li>
		                <li class="list-inline-item"><a href="#">Terms</a></li>
		                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
		            </ul>
		            <p class="copyright" style="font-size: 16px;color: #ffffff;">© 2020 Copyright: phoenixflights.com</p>
		        </footer>
		    </div>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

	
		</body>
</html>