<%-- 
    Document   : chat
    Created on : Oct 6, 2022, 7:42:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chat bot</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="css/chatstyle.css">
    
    <script src="response.js" defer></script>
    <script src="app.js" defer></script>
  </head>
  <body>
    <div class="container">
      <div class="chat-header">
        <div class="logo">
          <img src="images/df.png" alt="cwt" style="margin: auto"/>
          
        </div>
        <div class="title">Phoenix Airline</div>
      </div>
      <div class="chat-body"></div>
      <div class="chat-input">
        <div class="input-sec">
          <input type="text" id="txtInput" placeholder="Type here" autofocus />
        </div>
        <div class="send">
          <img src="images/send.svg" alt="send" />
        </div>
      </div>
    </div>
  </body>
</html>
