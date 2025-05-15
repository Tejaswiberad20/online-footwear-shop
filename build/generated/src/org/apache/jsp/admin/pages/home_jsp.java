package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <title>FootWear Shop</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <style>\r\n");
      out.write("    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */\r\n");
      out.write("    .row.content {height: 550px}\r\n");
      out.write("    body{\r\n");
      out.write("        background: url('https://cdn.prod.website-files.com/5ee0a01c741b15ab8ec28a14/65e1f0b0f215b0861c97d003_%3Fid%3D967-main.webp');\r\n");
      out.write("        background-repeat: no-repeat;\r\n");
      out.write("        background-position: center;\r\n");
      out.write("        background-size:cover; \r\n");
      out.write("    }\r\n");
      out.write("    /* Set gray background color and 100% height */\r\n");
      out.write("    .sidenav {\r\n");
      out.write("      background-color: #f1f1f1;\r\n");
      out.write("      height: 650px;\r\n");
      out.write("    }\r\n");
      out.write("    .nav-pills {\r\n");
      out.write("        background-color: #f1f1f1;\r\n");
      out.write("        border-radius: 0;\r\n");
      out.write("        margin: 0;\r\n");
      out.write("        padding: 0;\r\n");
      out.write("        list-style: none;\r\n");
      out.write("        width: 250px;\r\n");
      out.write("        margin-top: 30px;\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("        \r\n");
      out.write("    /* On small screens, set height to 'auto' for the grid */\r\n");
      out.write("    @media screen and (max-width: 767px) {\r\n");
      out.write("      .row.content {height: auto;} \r\n");
      out.write("    }\r\n");
      out.write("    .well{\r\n");
      out.write("        border:none;\r\n");
      out.write("        box-shadow: 0px 0px 5px #fff;\r\n");
      out.write("    }\r\n");
      out.write("    .h4{\r\n");
      out.write("        color:blue;\r\n");
      out.write("        font-weight: 600;\r\n");
      out.write("    }\r\n");
      out.write("    .manage{\r\n");
      out.write("        margin-top: 20px;\r\n");
      out.write("        padding: 20px;\r\n");
      out.write("        border-radius: 5px;\r\n");
      out.write("        box-shadow: 0px 0px 5px #fff;\r\n");
      out.write("        margin-bottom: 20px;\r\n");
      out.write("        box-shadow: 0 0 5px #bab7e0;\r\n");
      out.write("        border: #8385e7 solid 1px;\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-inverse visible-xs\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>                        \r\n");
      out.write("      </button>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\r\n");
      out.write("      <ul class=\"nav navbar-nav\">\r\n");
      out.write("        <li class=\"active\"><a href=\"#\">Dashboard</a></li>\r\n");
      out.write("        <li><a href=\"#\">Age</a></li>\r\n");
      out.write("        <li><a href=\"#\">Gender</a></li>\r\n");
      out.write("        <li><a href=\"#\">Geo</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("  <div class=\"row content\">\r\n");
      out.write("    <div class=\"col-sm-3 sidenav hidden-xs\">\r\n");
      out.write("      <ul class=\"nav nav-pills nav-stacked\">\r\n");
      out.write("        <li class=\"active\"><a href=\"home.jsp\">Dashboard</a></li>\r\n");
      out.write("        <li><a href=\"product.jsp\">Product</a></li>\r\n");
      out.write("        <li><a href=\"order.jsp\">Order</a></li>\r\n");
      out.write("        <li><a href=\"user.jsp\">USer</a></li>\r\n");
      out.write("        <li><a href=\"report.jsp\">Reports</a></li>\r\n");
      out.write("\r\n");
      out.write("      </ul><br>\r\n");
      out.write("    </div>\r\n");
      out.write("    <br>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"col-sm-9\">\r\n");
      out.write("      <div class=\"well\">\r\n");
      out.write("        <h4 class=\"h4\" >Dashboard</h4>\r\n");
      out.write("        <p>Welcome..</p>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"row \">\r\n");
      out.write("        <div class=\"col-sm-3 \">\r\n");
      out.write("          <a href=\"user.jsp\">\r\n");
      out.write("          <div class=\"well manage\">\r\n");
      out.write("            <h4 class=\"h4\">Users</h4>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </a>\r\n");
      out.write("        <div class=\"col-sm-3\">\r\n");
      out.write("          <a href=\"product.jsp\">\r\n");
      out.write("          <div class=\"well manage\">\r\n");
      out.write("            <h4 class=\"h4\">Product</h4>\r\n");
      out.write("          </div>\r\n");
      out.write("          </a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-sm-3\">\r\n");
      out.write("          <a href=\"order.jsp\">\r\n");
      out.write("          <div class=\"well manage\">\r\n");
      out.write("            <h4 class=\"h4\">Order</h4>\r\n");
      out.write("          </div>\r\n");
      out.write("          </a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-sm-3\">\r\n");
      out.write("          <a href=\"report.jsp\">\r\n");
      out.write("          <div class=\"well manage\">\r\n");
      out.write("            <h4 class=\"h4\">Reports</h4>\r\n");
      out.write("          </div>\r\n");
      out.write("          </a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    \r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
