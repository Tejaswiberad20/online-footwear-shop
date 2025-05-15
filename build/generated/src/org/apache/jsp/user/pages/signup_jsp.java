package org.apache.jsp.user.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Footwear Shop</title>\r\n");
      out.write("\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/signup.css\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"background fs-4 shadow\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\"><img src=\"../image/logo.png\" class=\"logo-img\"></a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"../home.jsp\">Home</a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\">Login</a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"signup.jsp\">Sign up</a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.jsp\">About us</a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"feedback.jsp\">Feedback</a></li>\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"gallery.jsp\">Gallery</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"form-body\">\r\n");
      out.write("    <div class=\"left-body\">\r\n");
      out.write("        <img src=\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTou6nbR8-2B90RQ2BufTZwzQT0wxU5ZA86o5Ons-9_n3_o8aFET02S7c58kdarQMOubR3kK9jP1EaInxlgGkQXhNzPgLzPKU1D-mmc_2f2UAAtdn-kdcVo\" class=\"limg\">\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"login\">\r\n");
      out.write("        <div class=\"right-body\">\r\n");
      out.write("            <form class=\"form\" action=\"signup.jsp\" method=\"post\">\r\n");
      out.write("                <h3 class=\"stext\">User Name</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"User Name\" name=\"uname\" class=\"input\" id=\"uname\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"stext\">Email</h3>\r\n");
      out.write("                <input type=\"email\" placeholder=\"Email Id\" name=\"email\" class=\"input\" id=\"email\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3>Password</h3>\r\n");
      out.write("                <input type=\"password\" placeholder=\"Password\" name=\"password\" class=\"input\" id=\"password\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"stext\">Mobile No</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"Mobile No\" name=\"mno\" class=\"input\" id=\"mno\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"stext\">Address</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"Address\" name=\"address\" class=\"input\" id=\"address\" required>\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"stext\">Pincode</h3>\r\n");
      out.write("                <input type=\"text\" placeholder=\"Pincode\" name=\"pincode\" class=\"input\" id=\"pincode\" required>\r\n");
      out.write("\r\n");
      out.write("                <button type=\"submit\" class=\"btn\">Sign up</button>    \r\n");
      out.write("                <p class=\"account\">Already Have An Account? <a href=\"login.jsp\">Login</a></p>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"footer-basic\">\r\n");
      out.write("    <footer>\r\n");
      out.write("        <div class=\"social\">\r\n");
      out.write("            <a href=\"#\"><img src=\"../icon/facebook.png\" class=\"icon\"></a>\r\n");
      out.write("            <a href=\"#\"><img src=\"../icon/instagram.png\" class=\"icon\"></a>\r\n");
      out.write("            <a href=\"#\"><img src=\"../icon/snapchat.png\" class=\"icon\"></a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <ul class=\"list-inline\">\r\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\">Home</a></li>\r\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\">Contact</a></li>\r\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\">About</a></li>\r\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\">Gallery</a></li>\r\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\">Feedback</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </footer>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
