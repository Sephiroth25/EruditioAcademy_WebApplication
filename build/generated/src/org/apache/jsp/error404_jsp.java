package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error404_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"viewport\" http-equiv=\"Content-Type\" content=\"width=device-width, initial-scale=1.0, text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Patua+One&display=swap\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <title>Login to Eruditio</title>\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"css/loginCSS.css\"/> -->\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            *\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            html \n");
      out.write("            {\n");
      out.write("                scroll-behavior: smooth;\n");
      out.write("            }\n");
      out.write("            ::-webkit-scrollbar\n");
      out.write("            {\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("                background-color: #F6F5F5;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header div \n");
      out.write("            {\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: space-around;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header div div {\n");
      out.write("                padding-top: .8%;\n");
      out.write("                padding: auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header div p \n");
      out.write("            {\n");
      out.write("                /*display: inline;*/\n");
      out.write("                font-family: 'Roboto', sans-serif;\n");
      out.write("                font-weight: 500;\n");
      out.write("                font-size: .9vw;\n");
      out.write("                padding-top: 1%;\n");
      out.write("                text-align: center;\n");
      out.write("                /*padding-left: 15px;*/\n");
      out.write("            }\n");
      out.write("\n");
      out.write("       \n");
      out.write("            footer p {\n");
      out.write("                font-family: 'Roboto', sans-serif;\n");
      out.write("              \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("                width: 50%;\n");
      out.write("                background: #391847;\n");
      out.write("                color: white;\n");
      out.write("                font-weight: 700;\n");
      out.write("                border: none;\n");
      out.write("                padding: 1rem;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                font-size: 0.75rem;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                letter-spacing: 0.5px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            a:hover\n");
      out.write("            {\n");
      out.write("                background: #4169E1 !important;\n");
      out.write("                color: white;\n");
      out.write("                transition: 0.3s ease-out;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("           \n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"background-color:white\">\n");
      out.write("\n");
      out.write("        <header style = \"height: 44px; background-color: #2E52B6; color: white;\">\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <div>\n");
      out.write("\n");
      out.write("                    <p>&nbsp;NUMBER</p>\n");
      out.write("                </div> \n");
      out.write("                <div>\n");
      out.write("\n");
      out.write("                    <p>&nbsp;EMAIL</p> \n");
      out.write("                </div>   \n");
      out.write("                <div>\n");
      out.write("                    <p>");
      out.print( getServletContext().getInitParameter("header"));
      out.write("</p> \n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("\n");
      out.write("                    <p>&nbsp;LOCATION</p> \n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("\n");
      out.write("                    <p>&nbsp;@ERUDITIOACADEMY</p>  \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div style=\"min-height:100vh;line-height: 1.5; display: flex; align-items: center; justify-content: space-around;text-align: center; \">\n");
      out.write("            <div style=\"text-align: center;\">\n");
      out.write("                <center><img alt=\"lostGirl\" src=\"Assets/Pictures/LostGirl.png\" style=\"background-color: white; border-radius: 60%; max-width:300px;max-height: 600px;\"></center>\n");
      out.write("                <h1 style=\"font-family: 'Patua One', cursive;font-size: clamp(50px,100%,80px); font-weight: normal; letter-spacing: 0.1em;\">ERROR: 404</h1>\n");
      out.write("                <center><h2 style=\"font-family: 'Roboto', sans-serif;font-weight: normal;\"> Uh Oh! Looks like you got lost! </h2></center>\n");
      out.write("                <center><a  href=\"EruditioHome\" id=\"loginButton\" style=\"background-color: gold;font-family: 'Patua One', cursive; color:black;\">HOME</a></center>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("   <footer style = \"height: 20px; background-color: #2E52B6; padding: 10px; color:white;\"> \n");
      out.write("            <p>&#169 ");
      out.print( getServletContext().getInitParameter("footer") );
      out.write("</p>\n");
      out.write("        </footer>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
