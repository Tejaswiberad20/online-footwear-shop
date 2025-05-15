package org.apache.jsp.admin.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.File;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    // Get the product ID from the URL parameter
    String Pid = request.getParameter("pid");
    int pid = Integer.parseInt(Pid);

    // Database connection details for ODBC
    String dbURL = "jdbc:odbc:footweardsn";  // ODBC DSN name, replace with your actual DSN
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String pname = "";
    String price = "";
    String qty = "";
    String category = "";
    String disc = "";
    String img = "";  // To hold image name

    // Variables for handling the form update
    String newPname = "";
    String newPrice = "";
    String newQty = "";
    String newCategory = "";
    String newDesc = "";
    String newImg = ""; // To store image name if uploaded

    // Handle form submission (POST request)
    if (request.getMethod().equalsIgnoreCase("POST")) {
        // Retrieve the updated product details from the form
        newPname = request.getParameter("pname");
        newPrice = request.getParameter("price");
        newQty = request.getParameter("qty");
        newCategory = request.getParameter("category");
        newDesc = request.getParameter("desc");

        // Handle image upload
        Part imgPart = request.getPart("img");  // Retrieve image part from form
        if (imgPart != null && imgPart.getSize() > 0) {
            String contentDisposition = imgPart.getHeader("content-disposition");
            String fileName = contentDisposition.substring(contentDisposition.lastIndexOf("=") + 2, contentDisposition.length() - 1);

            // Save the image in the images folder (only save file name to DB)
            String filePath = getServletContext().getRealPath("/images/") + fileName;
            imgPart.write(filePath);
            newImg = fileName; // Store the image name (only name, not path)
        } else {
            // If no new image is uploaded, keep the existing image
            newImg = request.getParameter("existingImg");
        }

        // Now update the product details in the database
        try {
            // Load JDBC-ODBC Driver
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

            // Establish connection
            conn = DriverManager.getConnection(dbURL, "", "");

            // Update query
            String updateQuery = "UPDATE product SET pname = ?, price = ?, qty = ?, category = ?, img = ?, disc = ? WHERE pid = ?";
            pstmt = conn.prepareStatement(updateQuery);

            pstmt.setString(1, newPname);
            pstmt.setString(2, newPrice);
            pstmt.setString(3, newQty);
            pstmt.setString(4, newCategory);
            pstmt.setString(5, newImg); // Use image name, not the full path
            pstmt.setString(6, newDesc);
            pstmt.setInt(7, pid);

            int rowsUpdated = pstmt.executeUpdate();

            // Display success or failure message
            if (rowsUpdated > 0) {
                out.println("<h3>Product updated successfully!</h3>");
            } else {
                out.println("<h3>Product update failed. Try again!</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>There was an error while updating the product.</h3>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    } else {
        // If it's a GET request, fetch the existing product details
        try {
            // Load JDBC-ODBC Driver
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

            // Establish connection
            conn = DriverManager.getConnection(dbURL, "", "");

            // Query to fetch product details
            String sql = "SELECT pname, price, qty, category, disc, img FROM product WHERE pid = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, pid);

            rs = pstmt.executeQuery();

            // If product exists, get the details
            if (rs.next()) {
                pname = rs.getString("pname");
                price = rs.getString("price");
                qty = rs.getString("qty");
                category = rs.getString("category");
                disc = rs.getString("disc");
                img = rs.getString("img");  // Get the image name (only name)
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Footwear Shop - Update Product</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/addproduct.css\">\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("        body {\r\n");
      out.write("            background-size: cover;\r\n");
      out.write("            background-color: #d7d4f8;\r\n");
      out.write("        }\r\n");
      out.write("        .form {\r\n");
      out.write("            display: block;\r\n");
      out.write("            margin: 50px auto;\r\n");
      out.write("            height: 640px;\r\n");
      out.write("            width: 400px;\r\n");
      out.write("            box-shadow: 0 0 5px 0px #6a4af7;\r\n");
      out.write("            padding: 10px 20px;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            background-color: #d7d4f8;\r\n");
      out.write("        }\r\n");
      out.write("        .input {\r\n");
      out.write("            width: 300px;\r\n");
      out.write("            height: 35px;\r\n");
      out.write("            border: solid 1px #c0bebe;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("        }\r\n");
      out.write("        .btn {\r\n");
      out.write("            display: block;\r\n");
      out.write("            margin: 20px auto;\r\n");
      out.write("            box-shadow: 0 0 5px 0px blue;\r\n");
      out.write("            padding: 10px 20px;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            background-color: #6a4af7;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            width: 200px;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"background fs-4 shadow\">\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg nav\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../../user/imges/logo.png\" class=\"logo-img\"></a>\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("                    aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
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
      out.write("\r\n");
      out.write("        <!-- Product Update Form -->\r\n");
      out.write("        <form class=\"form\" action=\"productupdate.jsp?pid=");
      out.print( pid );
      out.write("\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("            <!-- Hidden input to pass the product ID -->\r\n");
      out.write("            <input type=\"hidden\" name=\"pid\" value=\"");
      out.print( pid );
      out.write("\" />\r\n");
      out.write("\r\n");
      out.write("            <h2>Product Name:</h2>\r\n");
      out.write("            <input type=\"text\" name=\"pname\" class=\"input\" value=\"");
      out.print( pname );
      out.write("\" required />\r\n");
      out.write("\r\n");
      out.write("            <h2>Price:</h2>\r\n");
      out.write("            <input type=\"number\" name=\"price\" class=\"input\" value=\"");
      out.print( price );
      out.write("\" step=\"0.01\" required />\r\n");
      out.write("\r\n");
      out.write("            <h2>Choose Category:</h2>\r\n");
      out.write("            <select name=\"category\" class=\"input\" required>\r\n");
      out.write("                <option ");
      out.print( category.equals("Womens") ? "selected" : "" );
      out.write(">Womens</option>\r\n");
      out.write("                <option ");
      out.print( category.equals("Mens") ? "selected" : "" );
      out.write(">Mens</option>\r\n");
      out.write("                <option ");
      out.print( category.equals("Sports shoe") ? "selected" : "" );
      out.write(">Sports shoe</option>\r\n");
      out.write("                <option ");
      out.print( category.equals("Kids") ? "selected" : "" );
      out.write(">Kids</option>\r\n");
      out.write("            </select>\r\n");
      out.write("\r\n");
      out.write("            <h2>Quantity:</h2>\r\n");
      out.write("            <input type=\"number\" name=\"qty\" class=\"input\" value=\"");
      out.print( qty );
      out.write("\" required />\r\n");
      out.write("\r\n");
      out.write("            <h2>Description:</h2>\r\n");
      out.write("            <textarea name=\"desc\" class=\"input\" rows=\"4\" required>");
      out.print( disc );
      out.write("</textarea>\r\n");
      out.write("\r\n");
      out.write("            <h2>Product Image:</h2>\r\n");
      out.write("            <input type=\"file\" name=\"img\" class=\"input\" accept=\".jpg,.jpeg,.png\" />\r\n");
      out.write("            <input type=\"hidden\" name=\"existingImg\" value=\"");
      out.print( img );
      out.write("\" />\r\n");
      out.write("\r\n");
      out.write("            <button class=\"btn btn-primary\" type=\"submit\">Update Product</button>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
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
