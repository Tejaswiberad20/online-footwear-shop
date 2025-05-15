package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <title>FootwearShop</title>\r\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/addproduct.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <div class=\"background fs-4 shadow\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("      <div class=\"container-fluid\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img src=\"../../user/imges/logo.png\" class=\"logo-img\"></a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("          aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("          <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link nav-content\" href=\"product.jsp\">Product</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"user.jsp\">User</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"order.jsp\">Order</a></li>\r\n");
      out.write("            <li class=\"nav-item\"><a class=\"nav-link\" href=\"report.jsp\">Reports</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <h1 style=\"text-align:center;color:#6a4af7;margin-top:20px;\">Add New Product</h1>\r\n");
      out.write("\r\n");
      out.write("  <!-- Form for adding a new product -->\r\n");
      out.write("  <form class=\"addproduct1\" action=\"insertproduct.jsp\" method=\"post\">\r\n");
      out.write("    <h2 class=\"text\">Product Name:</h2>\r\n");
      out.write("    <input type=\"text\" name=\"pname\" class=\"input\" >\r\n");
      out.write("\r\n");
      out.write("    <h2 class=\"text\">Price:</h2>\r\n");
      out.write("    <input type=\"text\" name=\"price\" class=\"input\" >\r\n");
      out.write("\r\n");
      out.write("    <h2 class=\"text\">Choose Category:</h2>\r\n");
      out.write("    <select name=\"category\" class=\"input\" >\r\n");
      out.write("      <option name=\"category\">Womens</option>\r\n");
      out.write("      <option name=\"category\">Mens</option>\r\n");
      out.write("      <option name=\"category\" >Sports Shoes</option>\r\n");
      out.write("      <option name=\"category\">Kids</option>\r\n");
      out.write("    </select>\r\n");
      out.write("\r\n");
      out.write("    <h2 class=\"text\">Quantity:</h2>\r\n");
      out.write("    <input type=\"number\" name=\"qty\" class=\"input\" >\r\n");
      out.write("\r\n");
      out.write("    <h2 class=\"text\">Product Image:</h2>\r\n");
      out.write("    <input type=\"file\" name=\"img\" class=\"input\">\r\n");
      out.write("\r\n");
      out.write("    <h2 class=\"text\">Description:</h2>\r\n");
      out.write("    <input type=\"text\" name=\"disc\" class=\"input\" >\r\n");
      out.write("\r\n");
      out.write("    <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("  </form>\r\n");
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
