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
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="flightdetails.css"/> 
    <body>
       <center><h3>Your Flight Details</h3></center>
        <form action="flightdetails.jsp" method="POST">
            <center>
            <table> 
               
                <tbody>
                    <tr>
                        <td>Date</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Trip</td>
                        <td><input type="text" name="sname" value="" /></td>
                    </tr>
                    <tr>
                    
                        <td>Class</td>
                        <td><input type="text" name="avg" value="" /></td> 
                    </tr>
                    <tr>
                        <td><input type="submit" value="Edit Details" /></td>
                        <td><input type="submit" value="Confirm Details" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
            </form>
            </body>
</html>
