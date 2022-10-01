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
        
        <style>
    tbody, th, td {
  border: 1px solid white;
  border-collapse: collapse;
  font-family: Arial, Helvetica, sans-serif;
            }
    th, td {
  padding: 8px;
  text-align: left;
  background-color: buttonshadow;
  
  
}
    h1{
    color:olive;
}
          </style>
    </head>
    
    <body>
       <center><h1>Your Flight Details</h1></center>
       
            <form action="paymentdetails.jsp" method="POST">
                <center>
                    <table > 
               
                        <tbody width=50 height=50>
                            <tr>
                            <td>Date</td>
                            <td></td>
                            </tr>
                            <tr>
                            <td>Trip</td>
                            <td></td>
                            </tr>
                            <tr>
                    
                            <td>Class</td>
                            <td></td> 
                            </tr>
                            <tr>
                            <td><input type="submit" value="Edit Details" /></td>
                            <td><input type="submit" value="Confirm Details" /></td>
                            </tr>
                        </tbody>
                    </table>
                </center>
            </form>
        </div>   
    </body>
</html>
