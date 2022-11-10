
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 
    //clears cache so that if session is already destroyed then user won't be able to go 
    //back to the success page
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expire", 0);
 
    session.removeAttribute("registering");
    if (session.getAttribute("loggedInUser") != null)
    {
         response.sendRedirect("loggedIn/Dashboard.jsp");
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
            <form id = "Registration" method = "POST" action = "Registration">
                <label>Registration</label>
                <hr><h2>Role and Payment</h2>
                <label for="role">What are you applying as?</label>
                <select id="role" name="role">
                   <option value="Teacher">Teacher</option>
                   <option value="Student">Student</option>
                </select>
                <br>
                <label for="payment">What is your preferred payment option?</label>
                <select id="payment" name="payment">
                   <option value="payment1">Payment 1</option>
                   <option value="payment2">Payment 2</option>
                   <option value="payment3">Payment 3</option>
                </select>
                <hr>
                <h2>Personal Details</h2><br>
                <label for="givenName">Given Name</label>
                <input  autocomplete="on" name = "givenName" type="text" placeholder ="Enter your given name" required><br>
               
                <label for="middleName">Middle Name</label>
                <input autocomplete="on" name = "middleName" type="text" placeholder ="Enter your middle name" required><br>
               
                <label for="lastName">Last Name</label>
                <input autocomplete="on" name = "lastName" type="text" placeholder ="Enter your last name" required><br>
                
                <label for="contactNumber">Contact Number</label>
                <input autocomplete="on" name = "contactNumber" type="number" placeholder ="Enter your contact number" required><br>
                
                <label for="email">Email</label>
                <input autocomplete="on" name = "email" type="email" placeholder ="Enter your email" required><br>
                
                <label for="birthday">Enter your Birth date</label>
                <input autocomplete="on" name = "birthday" type="date" required><br>
                
                <hr>
                <h2>Account Details</h2>
                <label for="unameR">Username</label>
                <input autocomplete="on" name = "unameR" type="text" placeholder ="Enter your username" required><br>
                
                <label for="pwordR">Password</label>
                <input id = "pwordR" name = "pwordR" type="password" placeholder ="Enter your password" required><br>
               
                <label for="pwordR2">Confirm Password</label>
                <input id = "pwordR2" name = "pwordR2" type="password" placeholder ="Enter your password" required><br>
               
                
                <img src ="Captcha"><br>
                <input name = "captchaR" type="text" placeholder ="Enter Captcha" required><br>
                <p>
                    <% String ErrorMessage = "";
                        if (session.getAttribute("ErrorMessageR") != null)
                        {
                            ErrorMessage = (String) session.getAttribute("ErrorMessageR");
                            session.removeAttribute("ErrorMessageR");
                        }
                    %>
                    <%= ErrorMessage %> 
                </p>
                <input type="submit" id = "submit" value = "Sign Up"><br>
                <a href="LoginToEruditio">Log In</a><br>
                <a href="EruditioHome">Go back to Home Page</a>

            </form>
        </div>
        <footer style = "bottom: 0; height: 25px; background-color: orange">
            THIS IS THE FOOTER OF ERUDITIO
        </footer>
    </body>
</html>
