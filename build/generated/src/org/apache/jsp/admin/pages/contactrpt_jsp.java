package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.lang.String.*;

public final class contactrpt_jsp extends org.apache.jasper.runtime.HttpJspBase
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
       
        String query="select * from contact";
        out.println(query);
        ResultSet rs=st.executeQuery(query);

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Footwearshp</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/rpt.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
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
      out.write("\r\n");
      out.write("      <h1 class=\"head\">ContactUs Report</h1>\r\n");
      out.write("\r\n");
      out.write("      <div id=\"rpt\">\r\n");
      out.write("      <table width='50%' border=1 class=\"table\">\r\n");
      out.write("        <tr bgcolor='#DDDDDD' align=\"center\">\r\n");
      out.write("          <td><strong>Sr. No.</strong></td>\r\n");
      out.write("          <td><strong>UserName</strong></td>\r\n");
      out.write("          <td><strong>Mobile</strong></td>\r\n");
      out.write("          <td><strong>Messege</strong></td>\r\n");
      out.write("          \r\n");
      out.write("        </tr>\r\n");
      out.write("<tr>\r\n");
      out.write("       ");

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
      out.print(rs.getInt(3));
      out.write(" </div></td>\r\n");
      out.write("              <td><div align=\"center\" class=\"style4\">");
      out.print(rs.getString(4));
      out.write(" </div></td>\r\n");
      out.write("              \r\n");
      out.write("            </tr>\r\n");
      out.write("            ");

            }

      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("    </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("</div>\r\n");
      out.write("<button type=\"button\" class=\"btn\" onClick=\"myFunction()\">Print Report</button>\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("</div> \r\n");
      out.write(" <script type=\"text/javascript\">\r\n");
      out.write("        function myFunction() {\r\n");
      out.write("            var divToPrint = document.getElementById('rpt');\r\n");
      out.write("            var popupWin = window.open('', '_blank');\r\n");
      out.write("            popupWin.document.open();\r\n");
      out.write("            popupWin.document.write('<html><body onload=\"window.print()\"><center><br><div style=\"color: #FFFFFF;font-family:Apple Chancery, cursive;text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;font-style:italic;color: #FFFFFF;\"><h1 align=\"center\"><u>User Report</u></h1></div><h3><u>User Report</u></h3>' + divToPrint.innerHTML + '</center></body></html>');\r\n");
      out.write("            popupWin.document.close();\r\n");
      out.write("        }\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("    </html>\r\n");
      out.write("      ");

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
