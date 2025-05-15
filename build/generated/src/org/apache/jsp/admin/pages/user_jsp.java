package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.lang.String.*;

public final class user_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String id=(String)session.getAttribute("id");
    int i=0;
    String set_value;
    try
    {  
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st= con.createStatement(); 
        //for get user details
       
        String query="select * from reg";
        out.println(query);
        ResultSet rs=st.executeQuery(query);

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <title>Footwearshp</title>\r\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../css/product.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"background fs-4 shadow\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("      <div class=\"container-fluid\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img src=\"../../user/imges/logo.png\" class=\"logo-img\">\r\n");
      out.write("        </a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("          aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("          <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link nav-content\" aria-current=\"page\" href=\"product.jsp\">Product</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"user.jsp\">User</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"order.jsp\">Order</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"report.jsp\">Reports</a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <div class=\"btn-group dropstart bg-light\">\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"flex\">\r\n");
      out.write("    <div class=\"opretion s1\">\r\n");
      out.write("      <img src=\"../img/add-user (1).png\" class=\"img\">\r\n");
      out.write("      <a href=\"adduser.html\" class=\"h2\">\r\n");
      out.write("        <p class=\"h2\">Add User</p>\r\n");
      out.write("      </a>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <table class=\"table\">\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td><strong>Sr. No.</strong></td>\r\n");
      out.write("      <td><strong>Name</strong></td>\r\n");
      out.write("      <td><strong>Email</strong></td>\r\n");
      out.write("      <td><strong>Mobile No</strong></td>\r\n");
      out.write("      <td><strong>Password</strong></td>\r\n");
      out.write("      <td><strong>Address</strong></td>\r\n");
      out.write("      <td><strong>pincode</strong></td>\r\n");
      out.write("      <td><strong>Update</strong></td>\r\n");
      out.write("      <td><strong>Delete</strong></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      ");

            while(rs.next())
                               {
            
      out.write("\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getInt(1));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(2));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(3));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(4));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(5));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(6));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(7));
      out.write(" </div></td>\r\n");
      out.write("              <td><a href=\"../pages/userupdate.jsp\"><i class=\"fas fa-edit\"></i></a></td>\r\n");
      out.write("      <td><a href=\"#\"><i class=\"fas fa-trash-alt\"></i></a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");

            }

      out.write("\r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");

 }
    catch (Exception e) 
    {
        e.printStackTrace();
    }
  

      out.write("\r\n");
      out.write("\r\n");
      out.write("  ");
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
