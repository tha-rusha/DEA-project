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
        <link rel="stylesheet" href="flightdetails.css"/> 
       <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

        
    </head>
    
    <body>
      
 <div id="wrapper">
     
  <h1>Your Flight Details</h1>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
               <th><span>Airplane ID</span></th>
               <th><span>Date</span></th>
               <th><span>Trip</span></th>
               <th><span>Arrival</span></th>
               <th><span>Class</span></th>
               <th><span>Price</span></th>
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
</body>
    </body>
</html>
