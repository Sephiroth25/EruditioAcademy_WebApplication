<%-- 
    Document   : ConfirmRegistration
    Created on : 05 17, 21, 10:26:57 PM
    Author     : Kirby Wenceslao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
 
    //clears cache so that if session is already destroyed then user won't be able to go 
    //back to the success page
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expire", 0);
 
   if (session.getAttribute("registering") == null)
   {
        response.sendRedirect("RegisterToEruditio");
   }
 
    
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1.0, text/html; charset=UTF-8">
        <title>Register to Eruditio</title>
        
        <style>
            *
            {
                margin: 0;
                padding: 0;
                text-align: center;
            }
            
            #RegisterContent
            {
                text-align: center;
                align-items: center;
                justify-content: center;
                display: flex;
                
                width: 100%;
                min-height: 600px;
                
                
            }
            
            #Registration
            {
                justify-content: center;
                text-align: center;
                max-height: 500px;  
                
                 
            }
        </style>
        
   
    </head>
    <body>
         <header style = "height: 25px; background-color: purple; color: white;">
            THIS IS THE HEADER OF ERUDITIO
        </header>
        
        <div id = "RegisterContent">
            <img alt="Logo" src = "Assets/Pictures/logo.png" style="max-width:700px;max-height:500px;">
            <form id = "Registration" method = "POST" action = "loggedIn/Success">
                <h1>Registration Details</h1>
                <hr>
                <label>Role: </label><p><%= (String) session.getAttribute("role") %></p>    
                <label>Given Name: </label><p><%= (String) session.getAttribute("givenName") %></p>   
                <label>Middle Initial: </label><p><%= (String) session.getAttribute("middleName") %></p>   
                <label>Last Name: </label><p><%= (String) session.getAttribute("lastName") %></p>   
                <label>Contact Number: </label><p><%= (String) session.getAttribute("contactNumber") %></p>   
                <label>Email: </label><p><%= (String) session.getAttribute("email") %></p>   
                <label>Birthdate: </label><p><%= (String) session.getAttribute("birthday") %></p>   
                <label>Username: </label><p><%= (String) session.getAttribute("unameR") %></p>   
                <h2>Nakapokus kanaba?</h2>
                <input type = "submit" value = "YES">
                <a href = "RegisterToEruditio">NO</a><br>
                <a href="LoginToEruditio">Log In</a><br>
                <a href="EruditioHome">Go back to Home Page</a>

            </form>
        </div>
        <footer style = "bottom: 0; height: 25px; background-color: orange">
            THIS IS THE FOOTER OF ERUDITIO
        </footer>
    </body>
</html>
