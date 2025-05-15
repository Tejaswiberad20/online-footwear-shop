package org.apache.jsp.user.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.lang.String.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("\r\n");
      out.write("\r\n");

    String pid = (String) session.getAttribute("pid");
    int i = 0;
    try {
        // Load JDBC ODBC driver (legacy)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        
        // Correct SQL query to filter by 'Mens' category
        String query = "SELECT * FROM product WHERE category='Mens'";
        ResultSet rs = st.executeQuery(query);

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
      out.write("  <link rel=\"stylesheet\" href=\"../css/product.css\">\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("  <style>\r\n");
      out.write("    /* Flexbox layout for product box */\r\n");
      out.write("    .product-box {\r\n");
      out.write("      display: flex; \r\n");
      out.write("      flex-wrap: wrap;\r\n");
      out.write("      justify-content: space-between;\r\n");
      out.write("      gap: 20px;\r\n");
      out.write("      margin-top: 20px;\r\n");
      out.write("      margin-bottom: 20px;\r\n");
      out.write("      padding: 20px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    /* Styling individual product cards */\r\n");
      out.write("    .product-info {\r\n");
      out.write("      height: 430px;\r\n");
      out.write("      width: 250px;\r\n");
      out.write("      margin: 10px;\r\n");
      out.write("      box-shadow: 0 0 7px 0px #adabab;\r\n");
      out.write("      border-radius: 5px;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      transition: 0.5s;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .product-info:hover {\r\n");
      out.write("      transform: translateY(-9px);\r\n");
      out.write("      box-shadow: 0 0 10px 1px #cecccc;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .product-img {\r\n");
      out.write("      height: 240px;\r\n");
      out.write("      width: 247px;\r\n");
      out.write("      border-radius: 5px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .product-name {\r\n");
      out.write("      margin: 10px;\r\n");
      out.write("      font-size: 20px;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .price {\r\n");
      out.write("      font-weight: 600;\r\n");
      out.write("      font-size: 30px;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .price::before {\r\n");
      out.write("      content: 'Price: ';\r\n");
      out.write("      font-size: 20px;\r\n");
      out.write("      font-weight: 400;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .btn-buynow {\r\n");
      out.write("      padding: 10px 20px;\r\n");
      out.write("      border: none;\r\n");
      out.write("      border-radius: 5px;\r\n");
      out.write("      background-color: blue;\r\n");
      out.write("      width: 200px;\r\n");
      out.write("      color: #fff;\r\n");
      out.write("      display: block;\r\n");
      out.write("      margin: 10px auto;\r\n");
      out.write("      cursor: pointer;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      text-decoration: none;\r\n");
      out.write("      box-shadow: 0 0 5px 0px #5c5b5b;\r\n");
      out.write("      font-size: 20px;\r\n");
      out.write("      transition: 0.5s;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .btn-buynow:active {\r\n");
      out.write("      background-color: #0066ff;\r\n");
      out.write("      box-shadow: 0 0 10px 1px #dd3030;\r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"background fs-4 shadow\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("      <div class=\"container-fluid\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img src=\"../imges/logo.png\" class=\"logo-img\"></a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("          aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("          <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"../home.jsp\">Home</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\">Login</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"signup.jsp\">Sign up</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.jsp\">About us</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"feedback.jsp\">FeedBack</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"gallary.jsp\">Gallary</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <h1 class=\"text-center h1\">Mens Shoes</h1>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"product-box\">\r\n");
      out.write("    ");

      while (rs.next()) {
          int productId = rs.getInt("pid");
          String productName = rs.getString("pname");
          String price = rs.getString("price");
          String category = rs.getString("category");
          String quantity = rs.getString("qty");
          String image = rs.getString("img");
          String description = rs.getString("disc");

          String imagePath = "../imges/" + image;
    
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("      <img src=\"");
      out.print( imagePath );
      out.write("\" class=\"product-img\" alt=\"");
      out.print( productName );
      out.write("\">\r\n");
      out.write("      <h2 class=\"product-name\">");
      out.print( productName );
      out.write("</h2>\r\n");
      out.write("      <p class=\"price\">Rs.");
      out.print( price );
      out.write("</p>\r\n");
      out.write("      <a href=\"order.jsp?pid=");
      out.print( productId );
      out.write("\">\r\n");
      out.write("        <button class=\"btn btn-primary\">Buy Now</button>\r\n");
      out.write("      </a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    ");
 } 
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"footer-basic\">\r\n");
      out.write("    <footer>\r\n");
      out.write("      <div class=\"social\">\r\n");
      out.write("        <a href=\"#\"><img src=\"../icon/facebook.png\" class=\"icon \"></a>\r\n");
      out.write("        <a href=\"#\"><img src=\"../icon/instagram.png\" class=\"icon\"></a>\r\n");
      out.write("        <a href=\"#\"><img src=\"../icon/snapchat.png\" class=\"icon\"></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <ul class=\"list-inline\">\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">Home</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">Contact</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">About</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">Gallary</a></li>\r\n");
      out.write("        <li class=\"list-inline-item\"><a href=\"#\">FeedBack</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </footer>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("    integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");

    // Close database resources
    rs.close();
    st.close();
    con.close();
} catch (Exception e) {
    e.printStackTrace();
}

      out.write('\r');
      out.write('\n');
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
