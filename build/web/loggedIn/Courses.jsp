<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    //clears cache so that if session is already destroyed then user won't be able to go 
    //back to the success page
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expire", 0);

    if (session.getAttribute("loggedInUser") == null) {
        response.sendRedirect("/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/errorSession.jsp");
    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1.0, text/html; charset=UTF-8">
        <title>Eruditio Dashboard</title>

        <style>

            *
            {
                margin: 0px;
                padding: 0px;
                text-align: center;
            }

            ::-webkit-scrollbar
            {
                display: none;
            }

            body 
            {
                min-width: 350px;

            }
            header div 
            {
                display: flex;

                align-items: center;
                justify-content: space-around;
                height: 100%;

            }
            header div p 
            {
                display: block;
                font-size: clamp(8px, 100%,20px);
            }


            footer
            {
               
                text-align: center;
            }
            footer div 
            {
                display: flex;
                justify-content: space-around;
            }
            footer div p 
            {
                display: inline;
            }

            #DashboardBody
            {
                height: 90vh;
                display: flex;
                text-align: center;
            }
            #DashboardBody div
            {
                text-align: center;
            }

            #menu
            {
                display: flex;
                justify-content: space-around;
                flex-direction: column;
                height: 100%;

            }
            #menu a
            {
                display: flex;
                align-items: center;
                justify-content: space-around;
                text-decoration: none;
                background-color: white;
                color: black;

                width: 100%;
                height: 12.5%;

            }

            .logo
            {
                display: none;
            }
            #menu a:hover
            {
                background-color: black;
                color: white;
            }

            #Logo
            {
                background-color: white !important;


            }

            #Logo img
            {
                width: 100%;
                height: auto;
            }
            #DashboardContent
            {
              
              width: 82%;
              background-color: red;
              display: flex;
              align-items: center;
              justify-content: space-around;
              flex-wrap: wrap;
              overflow: scroll;
              
            }
            
   

            #DashboardContent img 
            {
                margin: 20px;
                max-width: 320px;
                max-height: 320px;
                border-radius: 30px;
            }
            
            #DashboardContent img:hover 
            {
               transform: scale(1.1);
            }
            
         

            @media only screen and (max-width: 1024px)
            {

                #DashboardBody
                {
                    flex-direction: column;
                    width: 100%;
                   min-height: 100vh;
                    background-color: pink;
                }

                #menu
                {
                    flex-direction: row;
                    min-width: 100%;
                    background-color: pink;
                    max-height: 7%;


                }

                #menu a
                {
                    width: 12.5%;
                    height: 100%;
                    font-size: clamp(5px, 80%, 100px);
                }


                #DashboardContent
                {
                   width: 100%;
                   min-height: 93%;
                }   
                
            }

            @media only screen and (max-width: 850px)
            {
                .label
                {
                    display: none;
                }

                #welcome
                {
                    font-size: clamp(8px, 100%,30px);
                }


                .logo
                {

                    width: 100;
                    height: auto;
                    display: block !important;
                }

                .logo img
                {
                    width: 200px;
                }

                #menu a
                {
                    width: 14.28%;
                    height: 100%;
                    font-size: clamp(5px, 80%, 20px);
                }

                #Logo
                {
                    display: none !important;
                }


            }


        </style>

        
        <!-- STYLES FOR HOVER IMAGE COURSES -->
        <style>
.container {
  position: relative;
background-color: pink;
  
  max-width: 320px;
  max-height: 320px;
  
}

.container img {
    z-index: 2;
 background-color: black;
  width: 100%;
  height: auto;
}

.overlay {
     z-index: 3;
  padding: 5%;
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  background-color: #008CBA;
  overflow: hidden;
  width: 100%;
  height: 0;
  transition: .5s ease;
}

.container:hover .overlay {
  bottom: 0;
  height: 100%;
}

.text {
  white-space: nowrap; 
  color: white;
  font-size: 20px;
  position: absolute;
  overflow: hidden;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}
</style>


<style>
    .button{
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
    
    button:hover{
        background: #4169E1 !important;
                color: white;
                transition: 0.3s ease-out;
    }
</style>
	
    </head>
    <body>

        <header style = "height: 60px; background-color: purple; color: white;">

            <div>
                <p class = "label">NUMBER</p>  <p class = "label">EMAIL</p>  <p class = "label" id = "welcome"><%= getServletContext().getInitParameter("header")%></p> <p class = "label">ADDRESS</p> <p class = "label">ACCOUNT</p>
                <p class = "logo"><img  alt =" header logo" src ="/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/Assets/Pictures/logo_rectangle_transparent.png"></p>
            </div>
        </header>
        <div id = "DashboardBody"> 
            <div id = "menu" style ="width: 18%;">
                <a id = "Logo"><img  alt =" header logo" src ="/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/Assets/Pictures/logo_rectangle_transparent.png"></a>
                <a href = "MyDashboard">Dashboard</a>
                <a href = "MyProfile">PROFILE</a>
                <a href = "MyCourses">COURSES</a>
                <a href = "MyResources">RESOURCES</a>
                <a href = "ChangeMyPassword">CHANGE PASSWORD</a>
                <a href = "/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/EruditioHome">Home</a>
                <a href = "SeeYouAgain">LOG OUT</a>
            </div>

            <div id = "DashboardContent" >
               
                
                <div class="container">
                    <img  alt="coding" src="/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/Assets/Pictures/codingforkids.png" >   
                    <div class="overlay">
                        <div class="text">Teaching kids computer programming <br> in the simplest and most enjoyable way. <br><br><a class="button" href="#" style="background-color: gold;font-family: 'Patua One', cursive; color:black;">Enroll Now!</a></div>
                    
                    </div>
                   
                </div>
                
                
                 <div class="container">
                    <img  alt="compass" src="/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/Assets/Pictures/compasCircle.png">
                    <div class="overlay">
                        <div class="text">Dramatically improve children's <br> reading comprehension and communication skills <br><br><a  class="button" href="#" style="background-color: gold;font-family: 'Patua One', cursive; color:black;">Enroll Now!</a></div>
                       
                    </div>
                    
                </div>
                
                 <div class="container">
                    <img  alt="reader" src="/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/Assets/Pictures/instantReaderCircle.png" >
                    <div class="overlay">
                        <div class="text">Your child can read in English in just 20-days. <br><br><a href="#" class="button" style="background-color: gold;font-family: 'Patua One', cursive; color:black;">Enroll Now!</a></div>
                 
                    </div>
                    
                </div>
                
                
                 <div class="container">
                    <img  alt="writer" src="/2CSD_FAP_ARGANOSA_CARLOS_MARASIGAN_WENCESLAO/Assets/Pictures/smartwriterCircle.png" >      
                    <div class="overlay">
                        <div class="text">Teaching kids to write effective essays and compositions <br><br><a href="#" class="button" style="background-color: gold;font-family: 'Patua One', cursive; color:black;">Enroll Now!</a></div>
                 
                    </div>
                    
                </div>
                
                           
                
                
                
                
            </div>

        </div>
        
        <footer style = "height: 20px; background-color: orange; padding: 10px; "> 
            <p > &#169 <%= getServletContext().getInitParameter("footer") %></p>
        </footer>


    </body>
</html>