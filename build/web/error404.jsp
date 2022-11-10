<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1.0, text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Patua+One&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">


        <title>Login to Eruditio</title>
        <!--<link rel="stylesheet" href="css/loginCSS.css"/> -->

        <style>
            *
            {
                margin: 0;
                padding: 0;
            }
            html 
            {
                scroll-behavior: smooth;
            }
            ::-webkit-scrollbar
            {
                display: none;
            }

            body
            {
                text-align: center;
                background-color: #F6F5F5;

            }

            header div 
            {
                display: flex;
                justify-content: space-around;

            }

            header div div {
                padding-top: .8%;
                padding: auto;
            }

            header div p 
            {
                /*display: inline;*/
                font-family: 'Roboto', sans-serif;
                font-weight: 500;
                font-size: .9vw;
                padding-top: 1%;
                text-align: center;
                /*padding-left: 15px;*/
            }

       
            footer p {
                font-family: 'Roboto', sans-serif;
              
            }
            
            a{
                text-decoration: none;
                display: block;
                width: 50%;
                background: #391847;
                color: white;
                font-weight: 700;
                border: none;
                padding: 1rem;
                border-radius: 8px;
                font-size: 0.75rem;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }
            
            a:hover
            {
                background: #4169E1 !important;
                color: white;
                transition: 0.3s ease-out;
            }

           

        </style>

        


    </head>

    <body style="background-color:white">

        <header style = "height: 44px; background-color: #2E52B6; color: white;">

            <div>
                <div>

                    <p>&nbsp;NUMBER</p>
                </div> 
                <div>

                    <p>&nbsp;EMAIL</p> 
                </div>   
                <div>
                    <p><%= getServletContext().getInitParameter("header")%></p> 
                </div>
                <div>

                    <p>&nbsp;LOCATION</p> 
                </div>
                <div>

                    <p>&nbsp;@ERUDITIOACADEMY</p>  
                </div>
            </div>



        </header>






        <div style="min-height:100vh;line-height: 1.5; display: flex; align-items: center; justify-content: space-around;text-align: center; ">
            <div style="text-align: center;">
                <center><img alt="lostGirl" src="Assets/Pictures/LostGirl.png" style="background-color: white; border-radius: 60%; max-width:300px;max-height: 600px;"></center>
                <h1 style="font-family: 'Patua One', cursive;font-size: clamp(50px,100%,80px); font-weight: normal; letter-spacing: 0.1em;">ERROR: 404</h1>
                <center><h2 style="font-family: 'Roboto', sans-serif;font-weight: normal;"> Uh Oh! Looks like you got lost! </h2></center>
                <center><a  href="EruditioHome" id="loginButton" style="background-color: gold;font-family: 'Patua One', cursive; color:black;">HOME</a></center>
            </div>
        </div>






    
   <footer style = "height: 20px; background-color: #2E52B6; padding: 10px; color:white;"> 
            <p>&#169 <%= getServletContext().getInitParameter("footer") %></p>
        </footer>
    
</body>

</html>