package org.apache.jsp.user.pages;

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

public final class sport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <title>Footwearshop</title>\r\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("      <link rel=\"stylesheet\" href=\"../css/product.css\">\r\n");
      out.write("\r\n");
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
      out.write("          src=\"../imges/logo.png\"\r\n");
      out.write("          class=\"logo-img\">\r\n");
      out.write("      </a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("          aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("          <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" aria-current=\"page\" href=\"../home.jsp\">Home</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"login.jsp\">Login</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"signup.jsp\">Sign up</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"about.jsp\">About us</a>\r\n");
      out.write("            </li>\r\n");
      out.write("\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" href=\"contact.jsp\">Contact</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" href=\"feedback.jsp\">FeedBack</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link \" href=\"gallary.jsp\">Gallary</a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("  <h1 class=\"text-center h1\">Sports</h1>\r\n");
      out.write("  <div class=\"product-box\">\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <img src=\"../imges/s1.webp\"class=\"product-img\">\r\n");
      out.write("        <h2 class=\"product-name\">Athleisure Sports Shoes for Men</h2>\r\n");
      out.write("        <p class=\"price\">Rs.399</p>\r\n");
      out.write("<a href=\"order.jsp?pid=");
      out.print( 23 );
      out.write("\">\r\n");
      out.write("   <button class=\"btn btn-primary\">Buy Now</button>\r\n");
      out.write("</a>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <img src=\"../imges/s2.webp\"class=\"product-img\">\r\n");
      out.write("        <h2 class=\"product-name\">Sports Sneakers Running Shoes Running Shoes For Men  (Blue , 8)\r\n");
      out.write("</h2>\r\n");
      out.write("        <p class=\"price\">Rs.699</p>\r\n");
      out.write("        <a href=\"order.jsp?pid=");
      out.print( 24 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <img src=\"../imges/s3.jpg\"class=\"product-img\">\r\n");
      out.write("        <h2 class=\"product-name\">Shozie Women Casual Walking and Running Sports Shoes Black,Colour</h2>\r\n");
      out.write("        <p class=\"price\">Rs.769</p>\r\n");
      out.write("         <a href=\"order.jsp?pid=");
      out.print( 25 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <img src=\"../imges/s4.webp\"class=\"product-img\">\r\n");
      out.write("        <h2 class=\"product-name\">shoes White Sneakers for Women Girls\r\n");
      out.write("        </h2>\r\n");
      out.write("        <p class=\"price\">Rs.180</p>\r\n");
      out.write("        <a href=\"order.jsp?pid=");
      out.print( 26 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("      <img src=\"../imges/s5.webp\"class=\"product-img\">\r\n");
      out.write("      <h2 class=\"product-name\">Blue Solid Men Running Sport Shoes for Men </h2>\r\n");
      out.write("      <p class=\"price\">Rs.180</p>\r\n");
      out.write("     <a href=\"order.jsp?pid=");
      out.print( 27 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"product-info\">\r\n");
      out.write("      <img src=\"../imges/s6.jpg\"class=\"product-img\">\r\n");
      out.write("      <h2 class=\"product-name\">Corvebse Casual Wear Mens Stylish Sneaker Shoes\r\n");
      out.write("    </h2>\r\n");
      out.write("      <p class=\"price\">Rs.489</p>\r\n");
      out.write(" <a href=\"order.jsp?pid=");
      out.print( 28 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"product-info\">\r\n");
      out.write("      <img src=\"../imges/s7.jpg\"class=\"product-img\">\r\n");
      out.write("      <h2 class=\"product-name\"> Women Sports Shoes | Walking Running Gym Shoes </h2>\r\n");
      out.write("      <p class=\"price\">Rs.599</p>\r\n");
      out.write("       <a href=\"order.jsp?pid=");
      out.print( 29 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"product-info\">\r\n");
      out.write("      <img src=\"../imges/s8.jpeg\"class=\"product-img\">\r\n");
      out.write("      <h2 class=\"product-name\">ROGER-M RUNNING SPORTS SHOES FOR MEN</h2>\r\n");
      out.write("      <p class=\"price\">Rs.499</p>\r\n");
      out.write("      <a href=\"order.jsp?pid=");
      out.print( 30 );
      out.write("\">\r\n");
      out.write("            <button class=\"btn btn-primary\">Buy Now</button></a>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"footer-basic\">\r\n");
      out.write("    <footer>\r\n");
      out.write("      <div class=\"social\"><a href=\"#\"><img src=\"../icon/facebook.png\" class=\"icon \"></i></a>\r\n");
      out.write("        <a href=\"#\"><img src=\"../icon/instagram.png\" class=\"icon\"></i></a>\r\n");
      out.write("        <a href=\"#\"><img src=\"../icon/snapchat.png\" class=\"icon\"></i></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <ul class=\"list-inline\">\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">Home</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">Contact</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">About</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">Gallary</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">FeedBack</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("  \r\n");
      out.write("    </footer>\r\n");
      out.write("  </div>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\">\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
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
