<%
  boolean loggedIn = (session.getAttribute("loggedInUser")!= null);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1.0, text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Patua+One&family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Eruditio Academy</title>

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

            nav
            {
                max-height: 180px;
                width: 100%;
                border-bottom: 1px solid #E5E5E5;
                background-color: #F6F5F5;

            }

            /*header h2 {
                font-family: 'Roboto', sans-serif;
                padding-top: 6px;
                font-weight: 500;
                font-size: 12px;
            }*/
            ul 
            {
                list-style: none; 
                display: flex;
                width: 100%;
                height: auto;
                align-items: center;
                justify-content: center;

            }
            ul li
            {
                margin: 15px;

            }

            ul li a {
                font-family: 'Roboto', sans-serif;
                font-weight: bold;
                color: #B6922E;
                text-decoration: none;
            }

            .Containers
            {
                min-height: 100vh;

            }

            #HomeContent
            {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-around;
            }

            #HomeContent div h1 {
                font-family: 'Patua One', cursive;
                font-size: 2.2vw;
                line-height: 43px;
                /* min-width: 432px;
                 max-height: 86px;*/
                padding-left: 15%;
                padding-top: 12%;  
                font-weight: normal;
                text-align: left;
            }

            #HomeContent div p {
                font-family: 'Roboto', sans-serif;
                font-size: 1.1vw;
                font-weight: normal;
                line-height: 19px;
                /*width: 429px;
                max-height: 57px;*/
                padding-left: 15%;
                padding-top: 3%;
                text-align: left;
            }

            /* video {
                  width: 500px; 
                  height: 437px;
              }*/


            #Reviews
            {
                height: 100px;
                background-color: white;
                /*margin: 5% 15% 5% 15%;*/
                /*padding: 2% 4% 4% 2%;*/
                /*text-align: center;*/
                padding: 2.8% 2% 2% 2.8%;
                width: 80%;
                height: 20%;
                margin: auto;
                margin-top: 10%;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                border-radius: 10px;
            }
            .reviewPanel h2
            {
                /*height: 140px;*/
                text-align: left;
                /*padding: 3% 6% 3% 6%;*/
                padding: 2.8% 2% 2% 2.8%;
                font-size: 1.3vw;
                font-weight: normal;
                /*background-color: pink;*/
                font-family: 'Patua One', cursive;
                border-radius: 25px;

            }

            .reviewPanel p
            {
                font-family: 'Roboto', sans-serif;
                font-size: 0.8vw;
                text-align: left;
                padding: 2.8% 2% 2% 2.8%;
                /*border-right: 1px solid #C4C4C4;*/
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

            /*.iconText {
                display: flex;
            }*/

            #applynow {
                background-color: #FFFFFF;
                border: 1px solid #0A2351;
                box-sizing: border-box;
                font-family: 'Roboto', sans-serif;
                font-style: normal;
                font-weight: bold;
                font-size: 1vw;    
                color: #B6922E;
                text-align: center;
                /*padding: 10px 50px 10px 50px;
                margin-top: 100px;
                margin-left: 300px;*/
                padding: 2% 10% 2% 10%;
                margin-top: 8%;
                margin-left: 20%;
            }

            #About
            {
                background-color: #F6F5F5;
                min-height: 35vh;

            }

            #About h1 {
                font-family: 'Roboto', sans-serif;
                font-size: 1.1vw;
                font-style: normal;
                font-weight: 500;
                text-align: center;
                letter-spacing: 0.9em;
                color: #8B8A8A;
                padding-top: 1.8%;
            }

            /*.AboutRow {
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                background-color: powderblue;
                padding-top: 4%;
            }

            .aboutEruditio h2 {
                font-family: 'Patua One', cursive;
                font-size: 2.2vw;
                font-style: normal;
                font-weight: normal;
                text-align: center;
                padding-top: 4%;
                letter-spacing: 0.1em;
                color: #000000;
            }*/

            .aboutEruditio p {
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
                font-style: normal;
                font-weight: normal;
                align-content: center;
                line-height: 25px;
                text-align: center;
                padding-top: 2%;
                align-items: center;
                width: 65%;
                margin-left: auto;
                margin-right: auto;

            }

            /*.VisionMission {
                float: left;
                width: 50%;
            }*/

            /*.Vision h2 {
                font-family: 'Patua One', cursive;
                font-size: 1vw;
                font-weight: normal;
                letter-spacing: 0.2em;
                text-align: center;
                background-color: #2E52B6;
                color: #FFFFFF;
                float: right;
                display: inline-block;
                margin-right: 35%;
                margin-top: -19%;
                padding: .5% 2% .5% 2%;
            }

            .Vision p {
                font-family: 'Roboto', sans-serif;
                font-size: 0.8vw;
                font-style: normal;
                width: 40%;
                float: right;
                margin-top: -16.7%;
                margin-right: 10.5%;
                display: inline-block;
                justify-content: center;
                border: 1px solid #000000;
                padding: 1.3%;
                width: 30%;
            }
            
            .Mission h2 {
                font-family: 'Patua One', cursive;
                font-size: 1vw;
                font-weight: normal;
                letter-spacing: 0.2em;
                text-align: center;
                background-color: #2E52B6;
                color: #FFFFFF;
                float: left;
                display: inline-block;
                margin-left: 50%;
                margin-top: 0;
                padding: .5% 2% .5% 2%;
            }

            .Mission p {
                font-family: 'Roboto', sans-serif;
                font-size: 0.8vw;
                font-style: normal;
                width: 40%;
                float: left;
                margin-left: 20%;
                display: inline-block;
                justify-content: center;
                border: 1px solid #000000;
                padding: 1.3%;
                width: 30%;
            }

           /* .Mission h2 {
                font-family: 'Patua One', cursive;
                font-size: 1.1vw;
                font-weight: normal;
                letter-spacing: 0.1em;
                text-align: center;
                background-color: #2E52B6;
                color: #FFFFFF;
                width: 3%;
                float: right;
                margin-top: auto;
                padding: .5%;

            }

            .Mission p {
                font-family: 'Roboto', sans-serif;
                font-size: 0.9vw;
                width: 27%;
                float: right;
                justify-content: center;
                border: 1px solid #000000;
                padding: 1.3%;
            }*/

            #Programs h1 {
                text-align: center;
                letter-spacing: 0.4em;
                color: #000000;
                font-family: 'Patua One', cursive;
                font-size: 2vw;
                font-weight: normal;
            }

            #Programs h2 {
                text-align: center;
                letter-spacing: 0.4em;
                color: #8B8A8A;
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
            }

            .programsPictures {
                margin-top: 2%;
                border-radius: 25px;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-around;
            }

            .Programs {
                border: 2px solid #FFFFFF;
                background-color: white;
                padding: .8% .8% 1.8% .8%;
                border-radius: 10px;

            }

            .Programs p {
                font-family: 'Roboto', sans-serif;
                letter-spacing: 0.1em;
                text-align: center;
            }

            /* .Teachers {
                 width: 100%;
                 padding-top: 5.5%;
                 background-color: lavender;
             }*/

            .Teachers, .Admins {
                display: flex;
                flex-direction: column;
                justify-content: space-around;
                /*background-color: lavender;*/

                width: 100%;
                padding-top: 10%;
            }
            
            

            .meetTeachers h1 {
                float: left;
                padding-left: 15%;
            }

            .meetTeachers h2 {
                float: left;
                padding-left: 15%;
            }
            
            #teacher1, #teacher2{
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                /* background-color: aliceblue;*/
            }

            /*#teacher1Info h2 {
                float: left;
                letter-spacing: 0.4em;
                color: #8B8A8A;
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
                padding-left: 5%;
                background-color: antiquewhite;
            }

            #teacher1 h1 {
                padding-top: 1%;
                float: left;
                background-color: antiquewhite;
            }*/

            /* #teacher1, #teacher2 {
                 display: flex;
                 flex-direction: row;
             }*/

            .teacher1Info, .teacher2Info {
                margin-top: 4%;
                margin-left: 11%;
                display: flex;
                flex-direction: column;
            }

            .teacher1Info img, .teacher2Info img {
                margin-left: 15%;
            }

            .teacher1Info h3, .teacher2Info h3 {
                padding-left: 7%;
                font-family: 'Patua One', cursive;
                font-size: 1.38vw;
                font-weight: normal;

                /*background-color: antiquewhite;*/
            }

            .teacher1Info h4, .teacher2Info h4 {
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
                font-weight: normal;
                /*background-color: antiquewhite;*/
            }

            .teacher1Desc, .teacher2Desc {
                margin-top: 4%;
                width: 55%;
            }
            .teacher1Desc p, .teacher2Desc p {
                font-family: 'Roboto', sans-serif;
                font-size: 1.1vw;
                padding: 1.6%;
                margin-bottom: 2%;
                text-align: justify;
                background-color: #FFFFFF;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            }

            /*.Admins{
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                background-color: lavenderblush;

                width: 100%;
                padding-top: 10%;
            }*/
            

            .meetAdmins h1 {
                float: left;
                padding-left: 15%;
            }

            .meetAdmins h2 {
                float: left;
                padding-left: 15%;
            }

            #adminInfo {
                display: flex;
                justify-content: space-around;
                flex-direction: row;
                margin-top: 2%;
                margin-left: 5%;
            }

            .admin1 h3, .admin2 h3, .admin3 h3 {
                padding-top: 2%;
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
                font-weight: normal;
            }


            /*#teacher2 {
                margin-top: 5%;
                display: flex;
                flex-direction: row;
            }
            
            .teacher2Info {
                margin-left: 11%;
                display: flex;
                flex-direction: column;
            }

            .teacher2Info img {
                margin-left: 15%;
            }

            .teacher2Info h3 {
                padding-left: 7%;
                font-family: 'Patua One', cursive;
                font-size: 1.38vw;
                font-weight: normal;

                background-color: antiquewhite;
            }

            .teacher2Info h4 {

                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
                font-weight: normal;
                background-color: antiquewhite;
            }

            .teacher2Desc {

                width: 60%;
            }
            .teacher2Desc p {
                font-family: 'Roboto', sans-serif;
                font-size: 1.1vw;
                padding: 1.6%;
                margin-bottom: 2%;
                text-align: justify;
                background-color: #FFFFFF;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            }*/



            .featuredText h2 {
                text-align: center;
                letter-spacing: 0.4em;
                color: #8B8A8A;
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;

            }

            .featuredText h1 {
                text-align: center;
                letter-spacing: 0.4em;
                color: #000000;
                font-family: 'Patua One', cursive;
                font-size: 2vw;
                font-weight: normal;
                padding-top: 1%;
            }

            .schoolQuote {
                background-color: #E5E5E5;
            }

            .schoolQuote h1 {
                text-align: center;
                font-family: 'Patua One', cursive;
                font-size: 2.5vw;
                letter-spacing: 0.1em;
                font-weight: normal;
                margin-top: 10%;
                padding-top: 3%;
            }

            .schoolQuote h2 {
                text-align: center;
                font-weight: normal;
                font-family: 'Roboto', sans-serif;
                letter-spacing: 0.1em;
                font-size: 1.3vw;
                color: #2E52B6;
                padding-bottom: 3%;
                margin-bottom: 2%;
            }

            * {
                box-sizing: border-box;
            }

            img {
                vertical-align: middle;
            }

            /* Position the image container (needed to position the left and right arrows) */
            .container {
                position: relative;
            }

            /* Hide the images by default */
            .mySlides {
                display: none;
            }

            /* Add a pointer when hovering over the thumbnail images */
            .cursor {
                cursor: pointer;
            }

            /* Next & previous buttons */
            .prev,
            .next {
                cursor: pointer;
                position: absolute;
                top: 40%;
                width: auto;
                padding: 16px;
                margin-top: -50px;
                color: white;
                font-weight: bold;
                font-size: 20px;
                border-radius: 0 3px 3px 0;
                user-select: none;
                -webkit-user-select: none;
            }

            /* Position the "next button" to the right */
            .next {
                right: 0;
                border-radius: 3px 0 0 3px;
                color: #C4C4C4;
            }

            .prev {
                left: 0;
                border-radius: 3px 0 0 3px;
                color: #C4C4C4;
            }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover,
            .next:hover {
                background-color: rgba(0, 0, 0, 0.8);
            }

            /* Number text (1/3 etc) */
            /* .numbertext {
                 color: #f2f2f2;
                 font-size: 12px;
                 padding: 8px 12px;
                 position: absolute;
                 top: 0;
             }*/

            /* Container for image text */
            /*.caption-container {
                text-align: center;
                background-color: #222;
                padding: 2px 16px;
                color: white;
            }*/

            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Six columns side by side */
            .column {
                float: left;
                width: 16.66%;
            }

            /* Add a transparency effect for thumnbail images */
            .demo {
                opacity: 0.6;
            }

            .active,
            .demo:hover {
                opacity: 1;
            }

            #Home
            {
                background-color: #F6F5F5;
            }          

            #Programs
            {
                background-color: #F6F5F5;
                min-height: 80vh;
            }

            #Featured
            {
                background-color: #F6F5F5;
                min-height: 90vh;
                padding-top: 10%;
            }
            footer div 
            {
                display: flex;
                justify-content: space-around;
            }
            footer div h2 {
                font-family: 'Patua One', cursive;
                font-weight: normal;
                letter-spacing: 0.1em;
                width: 15%;
                text-align: left;
                font-size: 1.3vw;
            }

            .footInfo {
                display: flex;
                flex-direction: column;

            }
            .footInfo h3 
            {
                font-family: 'Roboto', sans-serif;
                font-weight: 500;
                font-size: 1.2vw;
                padding-top: 2%;
                text-align: left;

            }

            .footInfo p {
                font-family: 'Roboto', sans-serif;
                font-size: .9vw;
                text-align: left;             
            }
            footer p {
                font-family: 'Roboto', sans-serif;
                font-size: 1vw;
                margin-top: 3%;
            }


            @media only screen and (max-width: 600px){
                #HomeContent div h1 {
                    font-size: 3.5vw;
                    padding-left: 1%;
                    padding-top: 18%;
                    line-height: 19px;
                }

                #HomeContent div p {
                    font-size: 1.8vw;
                    padding-left: 1%;
                    padding-top: 8%;
                    line-height: 19px;
                }


                #applynow {
                    font-size: 1.8vw;
                    margin-left: 50%;
                    margin-bottom: 5%;
                }

                #Reviews {
                    min-height: 27%;
                    width: 85%;
                }

                .reviewPanel h2 {
                    /*padding: 2.8% 2% 0.5% 2.8%;*/
                    font-size: 1.8vw;
                }

                .reviewPanel p {
                    /* padding: 2.8% 2% 0.5% 2.8%;*/
                    font-size: 1.3vw;
                }

                #Home {
                    margin-bottom: 3%;
                    min-height: 90vh;
                }


                video {
                    width: 320px;
                    height: 260px;
                    margin-left: auto;
                    margin-right: auto;
                }

                #About {
                    min-height: 20vh;
                }

                #About h1 {

                    font-size: 2.3vw;

                }

                .aboutEruditio p {
                    font-size: 1.8vw;
                    line-height: 15px;
                    width: 80%;
                }

                #Programs {
                    min-height: 90vh;
                }

                #Programs h1 {
                    padding-top: 5%;
                    font-size: 4vw;
                }

                #Programs h2 {
                    font-size: 2.3vw;
                }

                .Programs p {
                    font-size: 2.3vw;
                    text-align: center;
                }

                .Teachers{    
                    margin-top: 5%;    
                }
                
                .meetTeachers br, .meetAdmins br {
                    display: none !important;
                }
                
                .meetTeachers, .meetAdmins {
                    
                    width: 50%;
                    padding-left: 10%;
                    
                }
                .meetTeachers h1, .meetAdmins h1 {
                    padding-left: 10%;
                    
                }
                
                .meetTeachers h2, .meetAdmins h2 {
                    padding-left: 11%;
                   
                }
                
                .teacher1Info {
                    
                }
                
                .teacher1Info img, .teacher2Info img {
                    
                }
                
                .teacher1Info h3, .teacher2Info h3 {
                    font-size: 3vw;
                    
                    padding-top: 0;
                    
                }
                
                .teacher1Info h4, .teacher2Info h4{
                    font-size: 2vw;
                    
                    padding-top: 1.6%;
                    padding-left: 5%;
                }
                
                .teacher1Desc, .teacher2Desc {
                    width: 40%;
                }
                
                .teacher1Desc p, .teacher2Desc p {
                    font-size: 2vw;
                }
                
                .Admins {
                    
                    margin-top: 5%;
                }
                
                .admin1 h3, .admin2 h3, .admin3 h3 {
                    font-size: 2vw;
                    padding-top: 2%;
                    padding-left: 5%;
                }
                #adminInfo {
                    margin-left: 1%;
                }

                #Featured {
                    min-height: 30vh;
                }

                .featuredText h1 {
                    font-size: 3.7vw;
                }

                .featuredText h2 {
                    font-size: 2vw;
                }

                .schoolQuote h1 {
                    font-size: 2.8vw;
                }

                .schoolQuote h2 {
                    font-size: 1.5vw;
                }

                footer {
                    height: 10% !important;
                }

                footer div h2 {
                    font-size: 2vw;
                    width: 20%;
                }

                .footInfo h3 {
                    font-size: 2vw;
                    font-weight: normal;
                }

                .footInfo i {
                    font-size: 2vw;
                }

                .footInfo p {
                    font-size: 1.7vw;
                }

                footer p {
                    font-size: 1.5vw;

                }
                
                header div {
                    padding-top: 2%;
                }

                header div div i {
                    font-size: .6vw;
                }

                header div div p {
                    font-size: 2vw;
                }
                
                #Home video {
                    
                    margin-left: 12%;
                }
                
                
            }

        </style>

    </head>
    <body>

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



        <nav id ="Top">
            <img alt="Eruditio Logo" src = "Assets/Pictures/logo_rectangle_transparent.png" style="max-width:350px;max-height:123px;">
            <ul>
                <li><a href = "#Top">HOME</a></li>
                <li><a href = "#About">ABOUT</a></li>
                <li><a href = "#Programs">PROGRAMS</a></li>
                <% if (!loggedIn) 
                   {
                    
                %>
                     <li><a href = "LoginToEruditio">Login</a></li>
                
                <% }
                   else
                   { 
                %>
                     <li><a href = "loggedIn/MyDashboard">Dashboard</a></li>
                <% } %>
            </ul>
        </nav>

        <div id = "Home" class = "Containers">
            <div id = "HomeContent" style="margin-top: 2%;">
                <div style = "min-width: 50%;">
                    <h1>Lorem ipsum dolor sit amet,
                        <br>consectetur adipiscing elit.</h1>
                    <p>
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco<br> 
                        laboris nisi ut aliquip ex ea commodo consequat. sed do <br> 
                        eiusmod tempor incididunt ut labore et dolore magna aliqua
                    </p>
                    <% if(!loggedIn) 
                        {  
                    %>
                            <a href = "RegisterToEruditio" ><button id = "applynow">APPLY NOW</button></a>
                    <%  }  
                    %>
                </div>
                <!--<img alt="White Boy" src = "Assets/Pictures/white1.JPG" style="margin-top: 3%; min-height:437px; max-width: 500px;">
                <iframe width="420" height="345" src="Assets/Videos/harrypotter.mp4">
                </iframe> -->
                <video width = "37%" height = "auto" style="margin-top: 2%; margin-right: 4%;"controls>
                    <source src="Assets/Videos/harrypotter.mp4" type="video/mp4">
                </video><br>

            </div>

            <div id = "Reviews" style="display: flex; justify-content: space-between">
                <!-- make model for reviews-->
                <div class = "reviewPanel">
                    <h2>ADVERTISEMENT #1</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, ac scelerisque ante.</p>
                </div>
                <div class = "reviewPanel">
                    <h2>ADVERTISEMENT #2</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, ac scelerisque ante.</p>
                </div>
                <div class = "reviewPanel">
                    <h2>ADVERTISEMENT #3</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, ac scelerisque ante.</p>
                </div>
                <div class = "reviewPanel">
                    <h2>ADVERTISEMENT #4</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, ac scelerisque ante.</p>
                </div>
            </div>
        </div>

        <div id = "About">
            <!-- make model for about-->
            <h1> ABOUT US</h1>
            <!--<div class="aboutRow">-->
            <div class="aboutEruditio">
                <!--<h2>ERUDITIO ACADEMY</h2>-->
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Proin ac cursus lectus, ac scelerisque ante. Donec vulputate
                    sem nunc, lobortis luctus est tincidunt vitae. Praesent elit
                    magna, eleifend at semper quis, pulvinar congue massa.
                    Donec vulputate sem nunc, lobortis luctus est tincidunt
                    vitae. Praesent elit magna, eleifend at semper quis, pulvinar
                    congue massa. Integer dictum dui a lectus consequat, et
                    lobortis nisl luctus. </p>

                <!--<div class="Vision">
                    <h2>VISION</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, 
                        ac scelerisque ante. Donec vulputate sem nunc, lobortis luctus est tincidunt vitae. 
                        Praesent elit magna, eleifend at semper quis, pulvinar congue massa.</hp>
                </div>
                <div class="Mission">
                    <h2>MISSION</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, 
                        ac scelerisque ante. Donec vulputate sem nunc, lobortis luctus est tincidunt vitae. 
                        Praesent elit magna, eleifend at semper quis, pulvinar congue massa.</p>
                </div> -->
            </div>
        </div>     
    </div>

    <div id = "Programs">
        <h1>PROGRAMS</h1><br>
        <h2 style="font-weight: normal">TO BE OFFERED</h2>
        <div class="programsPictures">

            <div class= "Programs">
                <img alt="Coding for Kids" src = "Assets/Pictures/program_coding.png" style="max-width:255px;max-height:226px;">
                <p>CODING FOR KIDS</p>

            </div>
            <div class= "Programs">
                <img alt="Compass" src = "Assets/Pictures/program_compass.png" style="max-width:255px;max-height:226px;">
                <p>COMPASS</p>
            </div>
            <div class="Programs">
                <img alt="Instant Reader" src = "Assets/Pictures/program_reader.png" style="max-width:255px;max-height:226px;">
                <p>INSTANT READER</p>
            </div>
            <div class= "Programs">
                <img alt="Smart Writer" src = "Assets/Pictures/program_writer.png" style="max-width:255px;max-height:226px;">
                <p>SMART WRITER</p>
            </div>

        </div>

        <div class = "Containers">
            <div class="Teachers">
                <div class="meetTeachers">
                    <h2>MEET THE</h2><br>
                    <h1>TEACHERS</h1>
                </div>

                <div id="teacher1" style="width: 100%">

                    <!--image is currently placeholder!!-->
                    <div class="teacher1Info">
                        <img alt="Teacher Sarang Mood" src="https://i.imgur.com/M1L3lT6.jpg" style="max-width: 158px; max-height: 153px; border-radius: 50%"><br>
                        <h3>Name</h3>
                        <h4>SUBJECT</h4>
                    </div>

                    <div class="teacher1Desc">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, ac scelerisque ante. 
                            Donec vulputate sem nunc, lobortis luctus est tincidunt vitae. Praesent elit magna, eleifend at 
                            semper quis, pulvinar congue massa. Integer dictum dui a lectus consequat, et lobortis nisl luctus. 
                            Aliquam varius vestibulum odio ut fringilla. Donec diam dolor, fermentum sit amet aliquam in, congue 
                            ac odio.</p>
                    </div>
                </div>

                <div id="teacher2" style="width: 100%">
                    <div class="teacher2Info">
                        <img alt="JK" src="https://i.imgur.com/pA6Oyk4.jpg" style="max-width: 158px; max-height: 153px; border-radius: 50%"><br>
                        <h3>Name</h3>
                        <h4>SUBJECT</h4>
                    </div>
                    <div class="teacher2Desc">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac cursus lectus, ac scelerisque ante. 
                            Donec vulputate sem nunc, lobortis luctus est tincidunt vitae. Praesent elit magna, eleifend at 
                            semper quis, pulvinar congue massa. Integer dictum dui a lectus consequat, et lobortis nisl luctus. 
                            Aliquam varius vestibulum odio ut fringilla. Donec diam dolor, fermentum sit amet aliquam in, congue 
                            ac odio. </p>
                    </div>

                </div>
            </div>

            <div class="Admins">
                <div class="meetAdmins">
                    <h2>MEET THE</h2><br>
                    <h1>ADMINS</h1>
                </div>

                <div id="adminInfo" style="width: 100%">

                    <!--image is currently placeholder!!-->
                    <div class="admin1">
                        <img alt="Kookie" src="https://i.imgur.com/IPQB3K9.jpg" style="max-width: 140px; max-height: 135px; border-radius: 50%"><br>
                        <h3>NAME</h3>
                    </div>
                    <div class="admin2">
                        <img alt="Bridgerton" src="https://i.imgur.com/A8Z5flL.jpg" style="max-width: 140px; max-height: 135px; border-radius: 50%"><br>
                        <h3>NAME</h3>
                    </div>

                    <div class="admin3">
                        <img alt="Elsa" src="https://i.imgur.com/wDhWIOE.png" style="max-width: 140px; max-height: 135px; border-radius: 50%"><br>
                        <h3>NAME</h3>
                    </div>

                </div>
            </div>


        </div>
    </div>




</div>
</div>

<div id = "Featured" class = "Containers">
    <div class="featuredText">
        <h2>FEATURED</h2>
        <h1>GALLERY</h1>
    </div>
    <div class="container">
        <div class="mySlides">

            <img src="https://i.imgur.com/IodyPX6.jpg" style="width:30%">
        </div>

        <div class="mySlides">

            <img src="https://i.imgur.com/pmKrmri.jpg" style="width:30%">
        </div>

        <div class="mySlides">

            <img src="https://i.imgur.com/42kfsRh.jpg" style="width:30%">
        </div>

        <div class="mySlides">

            <img src="https://i.imgur.com/rBbj6J8.png" style="width:30%">
        </div>

        <div class="mySlides">

            <img src="https://i.imgur.com/dkXgwr0.png" style="width:30%">
        </div>

        <div class="mySlides">

            <img src="https://i.imgur.com/moMOhXJ.png" style="width:30%">
        </div>

        <a class="prev" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a>

        <!--<div class="caption-container">
            <p id="caption"></p>
        </div>-->

        <div class="row">
            <div class="column">
                <img class="demo cursor" src="https://i.imgur.com/IodyPX6.jpg" style="height: 20%; width:100%" onclick="currentSlide(1)" alt="The Woods">
            </div>
            <div class="column">
                <img class="demo cursor" src="https://i.imgur.com/pmKrmri.jpg" style="height: 20%; width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
            </div>
            <div class="column">
                <img class="demo cursor" src="https://i.imgur.com/42kfsRh.jpg" style="height: 20%; width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
            </div>
            <div class="column">
                <img class="demo cursor" src="https://i.imgur.com/rBbj6J8.png" style="height: 20%; width:100%" onclick="currentSlide(4)" alt="Northern Lights">
            </div>
            <div class="column">
                <img class="demo cursor" src="https://i.imgur.com/dkXgwr0.png" style="height: 20%; width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
            </div>    
            <div class="column">
                <img class="demo cursor" src="https://i.imgur.com/moMOhXJ.png" style="height: 20%; width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
            </div>
        </div>
    </div>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            var captionText = document.getElementById("caption");
            if (n > slides.length) {
                slideIndex = 1;
            }
            if (n < 1) {
                slideIndex = slides.length;
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            captionText.innerHTML = dots[slideIndex - 1].alt;
        }
    </script>
</div>    
<div class="schoolQuote">
    <h1>"POKUS"</h1>
    <h2>RENDON LABRADOR</h2>
</div>



<footer style = "background-color: #F6F5F5;"> 
    <div style="max-height: 10vh">
        <h2 style="width: 15%;">FOR MORE INFORMATION</h2>

        <div class="footInfo">

            <h3>ADDRESS</h3>
            <div>
                <i class="fa fa-map-marker"></i>
                <p>&nbsp;PHILIPPINES</p>
            </div>

        </div>
        <div class="footInfo">

            <h3>WORK HOURS</h3>
            <div>
                <i class="fa fa-clock-o"></i>
                <p>&nbsp;MON-FRI 8:00AM - 4:00PM</p>
            </div>

        </div>
        <div class="footInfo">

            <h3>CONTACT</h3>
            <div>
                <i class="fa fa-phone"></i>
                <p>8-7000</p>
            </div>

        </div>
        <div class="footInfo">

            <h3>EMAIL</h3>
            <div>
                <i class="fa fa-envelope"></i>
                <p>&nbsp;email@gmail.com</p>
            </div>

        </div>
    </div>

    <p style="background-color: #2E52B6; padding: .5%; font-weight: bold; color: white;">&#169 <%= getServletContext().getInitParameter("footer")%></p>
</footer>
</body>
</html>
