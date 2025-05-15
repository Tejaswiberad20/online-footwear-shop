package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");

    try {  
        // Load the JdbcOdbcDriver (deprecated)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  

        // Establish connection with the database via ODBC
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        
        // Retrieve the product ID from the request parameters
        String pid = request.getParameter("pid");

        // Using a Statement for querying the database
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM product");
        
        if (rs.next()) {
            String pname = rs.getString("pname");
            String price = rs.getString("price");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <title>Footwearshop</title>\r\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"./user/css/index.css\">\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"background fs-4 shadow\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("      <div class=\"container-fluid\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img\r\n");
      out.write("            src=\"./user/imges/logo.png\"\r\n");
      out.write("            class=\"logo-img\">\r\n");
      out.write("        </a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("          aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("          <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link disabled nav-content\" aria-current=\"page\" href=\"\">Home</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"./user/pages/login.jsp\">Login</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"./user/pages/signup.jsp\">Sign up</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"./user/pages/about.jsp\">About us</a>\r\n");
      out.write("            </li>\r\n");
      out.write("\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" href=\"./user/pages/contact.jsp\">Contact</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" href=\"./user/pages/feedback.jsp\">FeedBack</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" href=\"./user/pages/gallary.jsp\">Gallary</a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"background-head\">\r\n");
      out.write("    <h1 class=\"head\">Luxury Stylish & Branded</h1>\r\n");
      out.write("    <p class=\"text\">Up To 50% of</p>\r\n");
      out.write("    <a href=\"./user/pages/ladieshill.jsp\"class=\"nav-link\"><button type=\"button\" class=\"head-btn\">Shop Now</button></a>\r\n");
      out.write("  </div>\r\n");
      out.write("<div class=\"contentproduct\">\r\n");
      out.write("  <div class=\"best-product\">\r\n");
      out.write("    <h2 class=\"best-product-head\">Best Products</h2>\r\n");
      out.write("    <div class=\"product\">\r\n");
      out.write("      <div class=\"content\">\r\n");
      out.write("        <a href=\"./user/pages/order.jsp?pid=");
      out.print( 42 );
      out.write("\">\r\n");
      out.write("      <img src=\"./user/imges/btsmen1.webp\"\r\n");
      out.write("        class=\"product-img\">\r\n");
      out.write("        <p class=\"pinfo\">Men Brand Print Lace-Up Sneakers</p></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div  class=\"content\">\r\n");
      out.write("        <a href=\"./user/pages/order.jsp?pid=");
      out.print( 43 );
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("      <img src=\"./user/imges/btsmen2.webp\"\r\n");
      out.write("        class=\"product-img\">\r\n");
      out.write("        <p class=\"pinfo\">Original Luxury Branded Shoes</p></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div  class=\"content\">\r\n");
      out.write("        <a href=\"./user/pages/order.jsp?pid=");
      out.print( 44 );
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("      <img src=\"./user/imges/btswmen1.webp\"\r\n");
      out.write("        class=\"product-img\">\r\n");
      out.write("        <p class=\"pinfo\">Longwalk Branded High Ankle Comfortable Shoes</p></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div  class=\"content\">        \r\n");
      out.write("        <a href=\"./user/pages/order.jsp?pid=");
      out.print( 39 );
      out.write("\">\r\n");
      out.write("      <img src=\"./user/imges/btskid1.webp\"\r\n");
      out.write("        class=\"product-img\">\r\n");
      out.write("        <p class=\"pinfo\">VKC PRIDE 47 Kids Footwear</p></a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <button onclick=\"topFunction()\" id=\"myBtn\" title=\"Go to top\"><img src=\"./user/imges/hand.png\"class=\"handimg\"></button>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"contentproduct\">\r\n");
      out.write("    <div class=\"best-product2\">\r\n");
      out.write("      <h2 class=\"best-product-head\">Shop By Category</h2>\r\n");
      out.write("      <div class=\"product\">\r\n");
      out.write("        <div class=\"content\">\r\n");
      out.write("          <a href=\"./user/pages/ladieshill.jsp\">\r\n");
      out.write("        <img src=\"./user/imges/ladiesbanner.jpg\"\r\n");
      out.write("          class=\"product-img\">\r\n");
      out.write("          <p class=\"pinfo\">Womens</p></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div  class=\"content\">         \r\n");
      out.write("           <a href=\"./user/pages/Mens.jsp\">\r\n");
      out.write("        <img src=\"./user/imges/postermen.png\"\r\n");
      out.write("          class=\"product-img\">\r\n");
      out.write("          <p class=\"pinfo\">Mens</p></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div  class=\"content\">\r\n");
      out.write("          <a href=\"./user/pages/kids.jsp\">\r\n");
      out.write("        <img src=\"./user/imges/kidcategory.jpg\"\r\n");
      out.write("          class=\"product-img\">\r\n");
      out.write("          <p class=\"pinfo\">Kids</p></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div  class=\"content\">          <a href=\"./user/pages/sport.jsp\">\r\n");
      out.write("\r\n");
      out.write("        <img src=\"./user/imges/sports.webp\"\r\n");
      out.write("          class=\"product-img\">\r\n");
      out.write("          <p class=\"pinfo \"style=\"font-size:20px ;font: weight 600px;\">  Sports </p></a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("<h2 class=\"top-brand-head\">Top Brands</h2>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"top-brand\">\r\n");
      out.write("    <div class=\"brand\">\r\n");
      out.write("      <img src=\"./user/imges/Puma-Logo.jpg\"\r\n");
      out.write("        class=\"brand-img\">\r\n");
      out.write("        <img src=\"./user/imges/addidas.webp\"\r\n");
      out.write("        class=\"brand-img\"> \r\n");
      out.write("         <img src=\"./user/imges/nikelogo.png\"\r\n");
      out.write("        class=\"brand-img\">  \r\n");
      out.write("        <img src=\"./user/imges/reebook.png\"\r\n");
      out.write("        class=\"brand-img\">\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"footer-basic\">\r\n");
      out.write("    <footer>\r\n");
      out.write("      <div class=\"social\"><a href=\"#\"><img src=\"./user/icon/facebook.png\" class=\"icon \"></i></a>\r\n");
      out.write("        <a href=\"#\"><img src=\"./user/icon/instagram.png\" class=\"icon\"></i></a>\r\n");
      out.write("        <a href=\"#\"><img src=\"./user/icon/snapchat.png\" class=\"icon\"></i></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <ul class=\"list-inline\">\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"./index.jsp\">Home</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"./user/pages/contact.jsp\">Contact</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"./user/pages/about.jsp\">About</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"./user/pages/gallary.jsp\">Gallary</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"./user/pages/feedback.jsp\">FeedBack</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("\r\n");
      out.write("    </footer>\r\n");
      out.write("  </div>\r\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("    integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\">\r\n");
      out.write("    </script>\r\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("  let mybutton = document.getElementById(\"myBtn\");\r\n");
      out.write("\r\n");
      out.write("// When the user scrolls down 20px from the top of the document, show the button\r\n");
      out.write("window.onscroll = function() {scrollFunction()};\r\n");
      out.write("\r\n");
      out.write("function scrollFunction() {\r\n");
      out.write("  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {\r\n");
      out.write("    mybutton.style.display = \"block\";\r\n");
      out.write("  } else {\r\n");
      out.write("    mybutton.style.display = \"none\";\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// When the user clicks on the button, scroll to the top of the document\r\n");
      out.write("function topFunction() {\r\n");
      out.write("  document.body.scrollTop = 0; // For Safari\r\n");
      out.write("  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");

        } else {
            out.println("<h3>No product found with the given PID.</h3>");
        }

        // Close resources
        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");
    }

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
