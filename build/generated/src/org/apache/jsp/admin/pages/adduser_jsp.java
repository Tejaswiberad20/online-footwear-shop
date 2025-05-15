package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adduser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <title>CosmeticProduct</title>\r\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/addproduct.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");

    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String mno = request.getParameter("mno");
    String address = request.getParameter("address");
    String pincode = request.getParameter("pincode");

    if (uname != null && email != null) { // Check if form was submitted
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

            String query = "INSERT INTO reg (uname, email, password, mno, address, pincode) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, uname);
            pst.setString(2, email);
            pst.setString(3, password);
            pst.setString(4, mno);
            pst.setString(5, address);
            pst.setString(6, pincode);

            int i = pst.executeUpdate();

            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                             out.println("alert('Registration is successfully ');");
                             out.println("location='login.jsp';");
                             out.println("</script>");
            } else {
                 out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='signup.jsp';");
                             out.println("</script>");
            }

            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='signup.jsp';");
                             out.println("</script>");
        }
    }

      out.write("\r\n");
      out.write("    <div class=\"background fs-4 shadow\">\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("          <div class=\"container-fluid\">\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\"><img src=\"../../user/imges/logo.png\" class=\"logo-img\">\r\n");
      out.write("            </a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("              aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("              <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("              <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link nav-content\" aria-current=\"page\" href=\"product.jsp\">Product</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link\" href=\"user.jsp\">User</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link\" href=\"order.jsp\">Order</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link\" href=\"report.jsp\">Reports</a>\r\n");
      out.write("                </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("              <div class=\"btn-group dropstart bg-light\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("      </div>\r\n");
      out.write("    <h1 style=\"text-align:center;color:#6a4af7;margin-top:20px;\">Add New Product</h1>\r\n");
      out.write("       <form class=\"form\" action=\"aduser.jsp\" method=\"post\">\r\n");
      out.write("                <h3 class=\"text\">User Name</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"User Name\" name=\"uname\" class=\"input\" id=\"uname\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"text\">Email</h3>\r\n");
      out.write("                <input type=\"email\" placeholder=\"Email Id\" name=\"email\" class=\"input\" id=\"email\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3>Password</h3>\r\n");
      out.write("                <input type=\"password\" placeholder=\"Password\" name=\"password\" class=\"input\" id=\"password\">\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"text\">Mobile No</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"Mobile No\" name=\"mno\" class=\"input\" id=\"mno\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"text\">Address</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"Address\" name=\"address\" class=\"input\" id=\"address\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"text\">Pincode</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"Pincode\" name=\"pincode\" class=\"input\" id=\"pincode\" required>\r\n");
      out.write("\r\n");
      out.write("                <button type=\"submit\" class=\"btn\">Add</button>    \r\n");
      out.write("            </form>\r\n");
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
