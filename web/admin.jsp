<%-- 
    Document   : admin
    Created on : Oct 5, 2022, 11:50:41 PM
    Author     : tharu
--%>

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
					var info = document.getElementById("infoSec");
					var flight = document.getElementById("flightSec");
					var ticket = document.getElementById("ticketSec");
					var staff = document.getElementById("staffSec");
                                        var account = document.getElementById("accountSec");

					if(btn == "btnInfo"){
						info.style.display = "block";
						flight.style.display = "none";
						ticket.style.display = "none";
						staff.style.display = "none";
                                                account.style.display = "none";
					}else if(btn =="btnFlight"){
						info.style.display = "none";
						flight.style.display = "block";
						ticket.style.display = "none";
						staff.style.display = "none";
                                                account.style.display = "none";
					}else if(btn == "btnTicket"){
						info.style.display = "none";
						flight.style.display = "none";
						ticket.style.display = "block";
						staff.style.display = "none";
                                                account.style.display = "none";
					}else if(btn == "btnStaff"){
						info.style.display = "none";
						flight.style.display = "none";
						ticket.style.display = "none";
						staff.style.display = "block";
                                                account.style.display = "none";
					}else if(btn == "btnAccount"){
						info.style.display = "none";
						flight.style.display = "none";
						ticket.style.display = "none";
						staff.style.display = "none";
                                                account.style.display = "block";
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
                                          <li><a href="admin.jsp">Admin</a></li>
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

							<div style="height: 600px; background-color: white; border-radius: 25px;">
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
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" onclick="switchSection(this.id)" id="btnInfo">CLIENT DETAILS</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" onclick="switchSection(this.id)" id="btnFlight">FLIGHT DETAILS</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" id="btnTicket" onclick="switchSection(this.id)">TICKET DETAILS</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<button class="button" style="height:50px;width:180px;background-color: #0be03d;" id="btnStaff" onclick="switchSection(this.id)">STAFF DETAILS</button>
										</td>
									</tr>
                                                                        <tr>
										<td style="padding-top: 20px">
											<button class="button" style="height:50px;width:180px;background-color: #345beb;" id="btnAccount" onclick="switchSection(this.id)">Create Staff Account</button>
										</td>
									</tr>
								</table>

							</div>
						</div>
						<!-- <div class="col-lg-6 col-md-6 banner-left"> -->
							<!-- banner area 1 -->
						 <div class="col-lg-8 info-right" id="myDIV">

							 <div style="height: 600px; background-color: white; border-radius: 25px;">
									<br>
									<!-- 1 -->
								<div name="infoSec" id="infoSec">
									<h4 style="padding-left: 50px;font-size: 32px;color: #0c0773;">Client Details</h4>
									<!-- <table style="margin-left:auto;margin-right:auto;">
									<tr>
										<td style="padding-left: 115%;" >
											<button class="button" style="height:35px;width:100px;background-color: #DE1111;border-radius: 5px;margin-right: auto;">Log Out</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<form>
												<input type="text" name="Search" placeholder="Client ID" style="width: 250px;">
											</form>
										</td>
										<td style="padding-top: 20px">
											&#128269
										</td>
									</tr>
									<tr>
										<table style="margin-top: 30px; margin-left: 35px;">
											<tr >
												<td style="padding: 5px" rowspan="6" ><img src="img/girl2.png" alt="Avatar" width="110px"></td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Name : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Email : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr></form>
												<form>
												<td style="padding-left: 10px">
													<label>Passport No. : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Address : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr></form>
												<form>
												<td style="padding-left: 10px">
													<label>Mobile : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Gender : </label><br><input type="text" name="email">
												</td>
											</tr>
											</form>
										</table>
										<br>
									</tr>
									<tr >
										<td >
											<button class="button" style="height:50px;width:180px;background-color: #4CAF50;margin-left: 100px; border-radius: 5px">UPDATE</button>
										</td> 
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa801b; border-radius: 5px">BLOCK</button>
										</td>
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa482d; border-radius: 5px">DELETE</button>
										</td>
									</tr>

									</table> -->
								</div>
								<!-- 1 end -->

								<!-- 2 -->
								<div name="flightSec" id="flightSec" style="display: none;">
									<h4 style="padding-left: 50px;font-size: 32px;color: #0c0773;">Flight Details</h4>
<!-- 									<table style="margin-left:auto;margin-right:auto;">
									<tr>
										<td style="padding-left: 115%;" >
											<button class="button" style="height:35px;width:100px;background-color: #DE1111;border-radius: 5px;margin-right: auto;">Log Out</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<form>
												<input type="text" name="Search" placeholder="Fligth ID" style="width: 250px;">
											</form>
										</td>
										<td style="padding-top: 20px">
											&#128269
										</td>
									</tr>
									<tr>
										<table style="margin-top: 30px; margin-left: 35px;">
											<tr>
												<td style="padding: 5px" rowspan="6" width="110px"></td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Flight ID : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Depature : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Modle : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Arrival : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Airline : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Terminal : </label><br><input type="text" name="email">
												</td>
											</tr>
											</form>
										</table>
										<br>
									</tr>
									<tr >
										<td >
											<button class="button" style="height:50px;width:180px;background-color: #4CAF50;margin-left: 100px; border-radius: 5px">UPDATE</button>
										</td> 
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa801b; border-radius: 5px">BLOCK</button>
										</td>
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa482d; border-radius: 5px">DELETE</button>
										</td>
									</tr>

								</table> -->
								</div>
								<!-- 2 end -->

								<!-- 3 -->
								<div name="ticketSec" id="ticketSec" style="display: none;">
									<h4 style="padding-left: 50px;font-size: 32px;color: #0c0773;">Ticket Details</h4>
									<!-- <table style="margin-left:auto;margin-right:auto;">
									<tr>
										<td style="padding-left: 115%;" >
											<button class="button" style="height:35px;width:100px;background-color: #DE1111;border-radius: 5px;margin-right: auto;">Log Out</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<form>
												<input type="text" name="Search" placeholder="Ticket ID" style="width: 250px;">
											</form>
										</td>
										<td style="padding-top: 20px">
											&#128269
										</td>
									</tr>
									<tr>
										<table style="margin-top: 30px; margin-left: 35px;">
											<tr>
												<td style="padding: 5px" rowspan="6" width="110px"></td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Ticket ID : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>To : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Passenger Name : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Gate : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>From : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Seat : </label><br><input type="text" name="email">
												</td>
											</tr>
											</form>
										</table>
										<br>
									</tr>
									<tr >
										<td >
											<button class="button" style="height:50px;width:180px;background-color: #4CAF50;margin-left: 100px; border-radius: 5px">UPDATE</button>
										</td> 
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa801b; border-radius: 5px">BLOCK</button>
										</td>
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa482d; border-radius: 5px">DELETE</button>
										</td>
									</tr>

								</table> -->
								</div>
								<!-- 3 end -->
								<!-- 4 -->
								<div name="staffSec" id="staffSec" style="display: none;">
									<h4 style="padding-left: 50px;font-size: 32px;color: #0c0773;">Staff Details</h4>
									<!-- <table style="margin-left:auto;margin-right:auto;">
									<tr>
										<td style="padding-left: 115%;" >
											<button class="button" style="height:35px;width:100px;background-color: #DE1111;border-radius: 5px;margin-right: auto;">Log Out</button>
										</td>
									</tr>
									<tr>
										<td style="padding-top: 20px">
											<form>
												<input type="text" name="Search" placeholder="Ticket ID" style="width: 250px;">
											</form>
										</td>
										<td style="padding-top: 20px">
											&#128269
										</td>
									</tr>
									<tr>
										<table style="margin-top: 30px; margin-left: 35px;">
											<tr>
												<td style="padding: 5px" rowspan="6" width="110px"></td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Ticket ID : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>To : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Passenger Name : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Gate : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>From : </label><br><input type="text" name="email">
												</td>
												<td style="padding-left: 10px">
													<label>Seat : </label><br><input type="text" name="email">
												</td>
											</tr>
											</form>
										</table>
										<br>
									</tr>
									<tr >
										<td >
											<button class="button" style="height:50px;width:180px;background-color: #4CAF50;margin-left: 100px; border-radius: 5px">UPDATE</button>
										</td> 
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa801b; border-radius: 5px">BLOCK</button>
										</td>
										<td>
											<button class="button" style="height:50px;width:180px;background-color: #fa482d; border-radius: 5px">DELETE</button>
										</td>
									</tr>

								</table> -->
								</div>
								<!-- 4 end -->
                                                                
                                                                <!-- 5 -->
								<div name="accountSec" id="accountSec" style="display: none;">
									<h4 style="text-align: center;font-size: 32px;color: #ffffff; background-color:#345beb;">Create Staff Account</h4>
									 <table style="margin-left:auto;margin-right:auto;">
<!--									<tr>
										<td style="padding-left: 115%;" >
											<button class="button" style="height:35px;width:100px;background-color: #DE1111;border-radius: 5px;margin-right: auto;">Log Out</button>
										</td>
									</tr>-->
<!--									<tr>
										<td style="padding-top: 20px">
											<form>
												<input type="text" name="Search" placeholder="Ticket ID" style="width: 250px;">
											</form>
										</td>
										<td style="padding-top: 20px">
											&#128269
										</td>
									</tr>-->
									<tr>
										<table style="margin-top: 30px; margin-left: 35px;">
											<tr>
												<td style="padding: 5px" rowspan="6" width="110px"></td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Name : </label><br><input type="text" name="name">
												</td>
                                                                                        </tr>
											<tr>
                                                                                                
												<td style="padding-left: 10px">
													<label>Staff ID : </label><br><input type="text" name="staffid">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Staff Type : </label><br>
                                                                                                        <input type="radio" id="html" name="staff1" value="Staff 01">Staff 01
                                                                                                        <input type="radio" id="html" name="staff1" value="Staff 02">Staff 02
												</td>
                                                                                        </tr>
											<tr>       
												<td style="padding-left: 10px">
													<label>Email : </label><br><input type="text" name="email">
												</td>
											</tr>
											<tr>
												<form>
												<td style="padding-left: 10px">
													<label>Password : </label><br><input type="password" name="paws">
												</td>
                                                                                        </tr>
											</form>
										</table>
										<br>
                                                                
									</tr>
                                                                <table>
                                                                        <tr>
                                                                            <td style="padding-left: 450px">
                                                                                <a href="StaffDashboard1.jsp" button class="button" style="height:50px;width:180px;background-color: #38e049; border-radius: 5px">Create Account</a>
										</td>
									</tr>

								</table> 
								</div>
								<!-- 5 end -->

							 </div>
							 <!-- banner area 1 end -->


							<!-- banner area 3 end -->
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
		                <li class="list-inline-item"><a href="index.jsp">Home</a></li>
		                <li class="list-inline-item"><a href="#aboutus">About</a></li>
		                <li class="list-inline-item"><a href="#contactus">Contact</a></li>
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
