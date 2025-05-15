package org.apache.jsp.user.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.InputStream;
import java.io.FileInputStream;
import java.io.File;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class order_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");

    // No need to pass ID or category here if you're fetching the first registered user
    try {  
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement(); 
        
        // Use TOP 1 instead of LIMIT 1 for Access
        ResultSet rs1 = st.executeQuery("SELECT TOP 1 * FROM reg ORDER BY id DESC");
        
        if (rs1.next()) {
            String uname = rs1.getString("uname");
            String mno = rs1.getString("mno");
            String address = rs1.getString("address");

            // Now, you can fetch the product details as before.
            // Assuming you are still passing `pid` (product id) from the previous request
            String pid = request.getParameter("pid");
            ResultSet rs2 = st.executeQuery("SELECT * FROM product WHERE pid=" + pid);
            if (rs2.next()) {
                String pname = rs2.getString("pname");
                String price = rs2.getString("price");
                String qty = rs2.getString("qty");
                String disc = rs2.getString("disc");


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
      out.write("  <link rel=\"stylesheet\" href=\"../css/order.css\">\r\n");
      out.write("  <style>\r\n");
      out.write("      .same{\r\n");
      out.write("    border:none;\r\n");
      out.write("}\r\n");
      out.write(".pname{\r\n");
      out.write("    margin-top: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box{\r\n");
      out.write("display: block;\r\n");
      out.write("margin: 50px auto;\r\n");
      out.write("box-shadow:0 0 6px 0px #0066ff;\r\n");
      out.write("background-color: #fff;\r\n");
      out.write("border-radius:10px;\r\n");
      out.write("padding: 10px 20px;\r\n");
      out.write("height: 650px;\r\n");
      out.write("width: 550px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".ordetails{\r\n");
      out.write("display:flex;\r\n");
      out.write("}\r\n");
      out.write(".h1{\r\n");
      out.write("margin-top:10px;\r\n");
      out.write("}\r\n");
      out.write(".input{\r\n");
      out.write("width: 350px;\r\n");
      out.write("height: 30px;\r\n");
      out.write("}\r\n");
      out.write(".form{\r\n");
      out.write("margin-left:80px;\r\n");
      out.write("}\r\n");
      out.write(".itext{\r\n");
      out.write("color:#000;\r\n");
      out.write("font: size 20px;\r\n");
      out.write("}\r\n");
      out.write(".btn{\r\n");
      out.write("background-color:#0066ff;\r\n");
      out.write("color:#fff;\r\n");
      out.write("border:solid 1px #fff;\r\n");
      out.write("display: block;\r\n");
      out.write("margin: 20px auto;\r\n");
      out.write("width:150px;\r\n");
      out.write("box-shadow:0 0 5px 1px #0066ff;\r\n");
      out.write("}\r\n");
      out.write(".btn:hover{\r\n");
      out.write("box-shadow:0 0 10px 1px #0066ff;\r\n");
      out.write("border:none;\r\n");
      out.write("background-color:#0066ff;\r\n");
      out.write("color:#fff;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
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
      out.write("<div class=\"box\">\r\n");
      out.write("            <form action=\"\" method=\"POST\"class=\"form\">\r\n");
      out.write("            <h2 class=\"pname\">");
      out.print(pname);
      out.write("</h2>\r\n");
      out.write("            <h3 class=\"  itext\">User Name</h3>\r\n");
      out.write("            <input type=\"text\"name=\"uname\"value=\"");
      out.print(uname);
      out.write("\"class=\"input\"> \r\n");
      out.write("            <h3 class=\" itext\">Mobile NO</h3>\r\n");
      out.write("            <input type=\"text\"name=\"mno\"value=\"");
      out.print(mno);
      out.write("\"class=\"input\"> \r\n");
      out.write("            <h3 class=\" itext\">Address</h3>\r\n");
      out.write("            <input type=\"text\"name=\"address\"value=\"");
      out.print(address);
      out.write("\"class=\"input\"> \r\n");
      out.write("            <h3 class=\" itext\">Price</h3>\r\n");
      out.write("\r\n");
      out.write("            <input type=\"text\"class=\"input\"value=\"");
      out.print(price);
      out.write("\"id=\"price\">\r\n");
      out.write("            <h3 class=\" itext\">Quantity</h3>\r\n");
      out.write("\r\n");
      out.write("            <input type=\"number\" class=\"input\"id=\"quantity\" onchange=\"cal_amount()\"></p>\r\n");
      out.write("            <h3 class=\" itext\">Total Price</h3>\r\n");
      out.write("\r\n");
      out.write("            <input type=\"itext\" class=\"input\"id=\"totprice\"></p>\r\n");
      out.write("           \r\n");
      out.write("                <button class=\"btn\"> <a href=\"payment.jsp\"class=\"nav-link\">Order</button></a>\r\n");
      out.write("            \r\n");
      out.write("            </form>\r\n");
      out.write("    </div>  <div class=\"footer-basic\">\r\n");
      out.write("    <footer>\r\n");
      out.write("      <div class=\"social\">\r\n");
      out.write("        <a href=\"#\"><img src=\"../icon/facebook.png\" class=\"icon\"></a>\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("<script>\r\n");
      out.write("    function cal_amount() {\r\n");
      out.write("      let quantity = parseInt(document.getElementById(\"quantity\").value);\r\n");
      out.write("      let price = parseInt(document.getElementById(\"price\").value);\r\n");
      out.write("      if (!isNaN(quantity) && !isNaN(price)) {\r\n");
      out.write("        let total = price * quantity;\r\n");
      out.write("        document.getElementById(\"totprice\").value = total.toString();\r\n");
      out.write("      } else {\r\n");
      out.write("        document.getElementById(\"totprice\").value = \"Invalid input\";\r\n");
      out.write("      }\r\n");
      out.write("    }\r\n");
      out.write("  </script>\r\n");

        } else {
            out.println("<h3>No product found with the given PID.</h3>");
        }
    } else {
        out.println("<h3>No user found in the database.</h3>");
    }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");
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
