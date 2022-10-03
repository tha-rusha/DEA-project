<%-- 
    Document   : PaymentDetails
    Created on : Oct 1, 2022, 2:37:00 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="container">

    <form action="">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                

                <div class="inputBox">
                    <span>Full Name :</span>
                    <input type="text" placeholder="Kasun Wijenayake">
                </div>
                <div class="inputBox">
                    <span>Email :</span>
                    <input type="email" placeholder="kasun.99@example.com">
                </div>
                <div class="inputBox">
                    <span>Address :</span>
                    <input type="text" placeholder="Galle Road, Colombo">
                </div>

                <div class="inputBox">
                    <span>City :</span>
                    <input type="text" placeholder="Galle">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>State :</span>
                        <input type="text" placeholder="Sri Lanka">
                    </div>
                    <div class="inputBox">
                        <span>Zip Code :</span>
                        <input type="text" placeholder="80100">
                    </div>
                </div>

            </div>
            
            <div class="col">
                
                <h3 class="title">Payment</h3>

                <div class="inputBox">
                    <span>Cards Accepted :</span>
                    <img src="images/card_img.png" alt="accepted cards">
                </div>
                <div class="inputBox">
                    <span>Name on Card :</span>
                    <input type="text" placeholder="mr. Kasun Theekshana Wijenayake">
                </div>
                
                <div class="inputBox">
                    <span>Credit Card Number :</span>
                    <input type="number" placeholder="XXXX-XXXX-XXXX-XXXX">
                </div>
                <div class="inputBox">
                    <span>Exp Month :</span>
                    <input type="text" placeholder="December">
                </div>
                
                <div class="flex">
                    <div class="inputBox">
                        <span>Exp Year :</span>
                        <input type="number" placeholder="2025">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="XXX">
                    </div>
                </div>
                
            </div>
                
                
                
        </div>         
    </form>

        </div>   
    
</body>
</html>