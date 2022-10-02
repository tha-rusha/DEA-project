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
    <link rel="stylesheet" href="abs.css"/>
    </head>
    <body>
        <main>
      <div class="box">
        <div class="inner-box">
          <div class="forms-wrap">
            <form action="index.html" autocomplete="off" class="sign-in-form">
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
                   <input type="text" minlength="4" class="input-field" autocomplete="off" required />
                   <label>Name</label>
                </div>

                <div class="input-wrap"> 
					<input type="password" minlength="4" class="input-field" autocomplete="off" required />
                    <label>Password</label>
                </div>

                <input type="submit" value="Sign In" class="sign-btn" />
              </div>
            </form>

            <form action="index.html" autocomplete="off" class="sign-up-form">
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
                  <input type="text" minlength="4" class="input-field"  autocomplete="off" required />
                  <label>Name</label>
                </div>
				  
				  <div class="input-wrap">
                  <input type="text" minlength="4" class="input-field"  autocomplete="off" required />
                  <label>Contact Number</label>
                </div>

                <div class="input-wrap">
                  <input type="email" class="input-field" autocomplete="off" required />
                  <label>Email</label>
                </div>

                <div class="input-wrap">
                  <input type="password" minlength="4" class="input-field" autocomplete="off" required />
                  <label>Password</label>
                </div>
				  
				  <div class="input-wrap">
                  <input type="text" minlength="4" class="input-field"  autocomplete="off" required />
                  <label>NIC/StaffID</label>
                </div>
    </body>
</html>
