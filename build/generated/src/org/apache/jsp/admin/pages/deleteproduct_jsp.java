package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class deleteproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String ID = request.getParameter("ID");
    Connection con = null;
    Statement st = null;
    PreparedStatement pst = null;
    
    try {
        // Load the ODBC driver (deprecated)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

        // Establish connection with the database (adjust the ODBC data source name as needed)
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

        // Use PreparedStatement to prevent SQL injection
        String sql = "DELETE FROM product WHERE ID = ?";
        pst = con.prepareStatement(sql);
        pst.setString(1, ID);
        
        // Execute the update
        int i = pst.executeUpdate();

        if (i > 0) {
            // If deletion was successful, show an alert and redirect
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Delete Data Successfully');");
            out.println("location='product.jsp';");
            out.println("</script>");
        } else {
            // If no rows were affected (i.e., no matching ID), show a failure message
            out.println("<script type=\"text/javascript\">");
            out.println("alert('No Data Found with the given ID');");
            out.println("location='product.jsp';");
            out.println("</script>");
        }
    } catch (Exception e) {
        // Print the error and stack trace for debugging
        e.printStackTrace();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Error while deleting data');");
        out.println("location='product.jsp';");
        out.println("</script>");
    } finally {
        // Close the resources to prevent memory leaks
        try {
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
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
