<%-- 
    Document   : signup and login
    Created on : Oct 2, 2022, 11:08:09 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Sign in & Sign up Form</title>
   
   
    </head>
    <body>
        <main>
      <div class="box">
        <div class="inner-box">
          <div class="forms-wrap">
              <form action="LoginServelet" autocomplete="off" class="sign-in-form" method="post">
              <div class="logo">
                <img src="images/Untitled-1.png" alt="logo">
              </div>

              <div class="heading">
                <h2>Welcome Back</h2>
                <h6>Not registred yet?</h6>
                <a href="#" class="toggle">Sign up</a>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                    <input type="text"  name="userName" minlength="4" class="input-field" autocomplete="off" required />
                   <label>Name</label>
                </div>

                <div class="input-wrap"> 
                    <input type="password" name="password" minlength="4" class="input-field" autocomplete="off" required />
                    <label>Password</label>
                </div>

                <input type="submit" value="Sign In" class="sign-btn" />
              </div>
            </form>

              <form action="Customer" autocomplete="off" class="sign-up-form" method="POST">
              <div class="logo">
                <img src="images/Untitled-1.png" alt="easyclass" />
              </div>

              <div class="heading">
                <h2>Get Started</h2>
                <h6>Already have an account?</h6>
                <a href="#" class="toggle">Sign in</a>
              </div>
				<br>

              <div class="actual-form">
                <div class="input-wrap">
                    <input type="text" minlength="4" class="input-field" name="customerName" autocomplete="off" required />
                  <label>Customer Name</label>
                </div>
                  
                  <div class="input-wrap">
                      <input type="email" class="input-field" name="email" autocomplete="off" required />
                  <label>Email</label>
                </div>
		
                  <div class="input-wrap">
                      <input type="text" minlength="4" class="input-field" name="passportNumber" autocomplete="off" required />
                  <label>Passport Number</label>
                </div>
                  
		<div class="input-wrap">
                    <input type="text" minlength="4" class="input-field" name="address" autocomplete="off" required />
                  <label>Address</label>
                </div>

                   <div class="input-wrap">
                       <input type="text" minlength="4" class="input-field" name="gender" autocomplete="off" required />
                  <label>Gender</label>
                </div>
                
                  
                   <div class="input-wrap">
                       <input type="text" minlength="4" class="input-field" name="mobile" autocomplete="off" required />
                  <label>Mobile</label>
                </div>

                <div class="input-wrap">
                    <input type="password" minlength="4" class="input-field" name="password" autocomplete="off" required />
                  <label>Password</label>
                </div>
				
                  <div class="input-wrap">
                    <input type="text" minlength="4" class="input-field" name="userRole" autocomplete="off" required />
                  <label>User Role</label>
                </div>
			
				 		  
                <input type="submit" value="Sign Up" class="sign-btn" />

                <p class="text">By signing up, I agree to the 
					<a href="#">Terms of Services</a> and  
					<a href="#">Privacy Policy</a>
                </p>
              </div>
            </form>
          </div>

          <div class="carousel">
            <div class="images-wrapper">
              <img src="images/logo.jpeg"  class="image img-1 show" alt="" />
            </div> 
          </div>
        </div>
      </div>
    </main>

    <!-- Javascript file -->

    <script src="abs.js"></script>
    </body>
</html>
