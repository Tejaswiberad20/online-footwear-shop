package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class productupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

String pid=request.getParameter("pid");
String category=request.getParameter("category");
String img=request.getParameter("img");
String pname=request.getParameter("pname");
String disc=request.getParameter("disc");
String qty=request.getParameter("qty");
String price=request.getParameter("price");

PreparedStatement ps = null;



try
{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            // creating connection toth data base  
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
           Statement st=con.createStatement();
           String sql="Update product set category=?,img=?,pname=?,disc=?,qty=?,price=? where pid="+pid;
            ps = con.prepareStatement(sql);
            ps.setString(1,category);
            ps.setString(2, img);
            ps.setString(3, pname);
            ps.setString(4, disc);
            ps.setString(5, qty);
            ps.setString(6, price);
            int i = ps.executeUpdate();
            if(i > 0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Product Edit Successfully');");
                out.println("location='product.jsp';");
                out.println("</script>");
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                             out.println("alert('Product Not Edit');");
                             out.println("location='product_manage.jsp';");
                             out.println("</script>");
            } 
                            
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 
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
