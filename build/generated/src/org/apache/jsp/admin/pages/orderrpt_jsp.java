package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class orderrpt_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String oid = (String) session.getAttribute("oid");
    int i = 0;
    String set_value;
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        // Using the deprecated JdbcOdbcDriver (Only for legacy use, avoid in production)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  // Load the JDBC ODBC driver
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");  // Use the ODBC DSN connection string
        st = con.createStatement();
        
        // Example query fetching order details (Ensure correct table name)
        String query = "SELECT * FROM [order]";
        
        out.println("Executing query: " + query); // Debugging output to check if the query is being executed
        
        rs = st.executeQuery(query);

        // Check if we have any data
        if (!rs.next()) {
            out.println("<p>No data found in the orders table.</p>"); // No data in the result set
        } else {
            // If data exists, print it
            out.println("<p></p>");
        }
        

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Footwearshp</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/rpt.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"background fs-4 shadow\">\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../../user/imges/logo.png\" class=\"logo-img\"></a>\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("                aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link nav-content\" href=\"product.jsp\">Product</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"user.jsp\">User</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"order.jsp\">Order</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"report.jsp\">Reports</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <h1 class=\"head\">Order Report</h1>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"rpt\">\r\n");
      out.write("        <table width='100%' border=1 class=\"table\">\r\n");
      out.write("            <thead>\r\n");
      out.write("                <tr bgcolor='#DDDDDD' align=\"center\">\r\n");
      out.write("                    <th><strong>Sr. No.</strong></th>\r\n");
      out.write("                    <th><strong>Name</strong></th>\r\n");
      out.write("                    <th><strong>Mobile No</strong></th>\r\n");
      out.write("                    <th><strong>Address</strong></th>\r\n");
      out.write("                    <th><strong>Product Name</strong></th>\r\n");
      out.write("                    <th><strong>Price</strong></th>\r\n");
      out.write("                    <th><strong>Quantity</strong></th>\r\n");
      out.write("                    <th><strong>Total Price</strong></th>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </thead>\r\n");
      out.write("            <tbody>\r\n");
      out.write("                ");

                    // Only use 'rs.next()' to iterate over rows
                    while (rs.next()) {
                
      out.write("\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getInt(1) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getString(2) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getString(3) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getString(4) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"justify\">");
      out.print( rs.getString(5) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getString(6) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getString(7) );
      out.write("</td>\r\n");
      out.write("                        <td align=\"start\">");
      out.print( rs.getString(8) );
      out.write("</td> \r\n");
      out.write("\r\n");
      out.write("                    </tr>\r\n");
      out.write("                ");

                    }
                
      out.write("\r\n");
      out.write("            </tbody>\r\n");
      out.write("        </table>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <button type=\"button\" class=\"btn btn-primary\" onClick=\"myFunction()\">Print Report</button>\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("        function myFunction() {\r\n");
      out.write("            var divToPrint = document.getElementById('rpt');\r\n");
      out.write("            var popupWin = window.open('', '_blank');\r\n");
      out.write("            popupWin.document.open();\r\n");
      out.write("            popupWin.document.write('<html><body onload=\"window.print()\"><center><br><div style=\"color: #FFFFFF;font-family:Apple Chancery, cursive;text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;font-style:italic;color: #FFFFFF;\"><h1 align=\"center\"><u>Order Report</u></h1></div><h3><u>Order Report</u></h3>' + divToPrint.innerHTML + '</center></body></html>');\r\n");
      out.write("            popupWin.document.close();\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");

    } catch (Exception e) {
        e.printStackTrace(); // Log the error for debugging
        out.println("<p>Error occurred: " + e.getMessage() + "</p>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Log the error for debugging
        }
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
