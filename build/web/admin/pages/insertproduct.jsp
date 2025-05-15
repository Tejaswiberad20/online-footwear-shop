<%-- 
    Document   : process_productinsert.jsp
    Created on : 18 May, 2022, 7:41:51 PM
    Author     : HP
--%>
<html>
    <head></head>
<body>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String pname = request.getParameter("pname");
    String price = request.getParameter("price");
    String category = request.getParameter("category");
    String qty = request.getParameter("qty");
    String img = request.getParameter("img");
    String disc = request.getParameter("disc");

    if (pname != null && price != null) { // Check if form was submitted
        try {
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");


            String query = "INSERT INTO product (pname, price, category, qty, img, disc) VALUES ( ?, ?, ?, ?, ?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, pname);
            pst.setString(2, price);
            pst.setString(3, category);
            pst.setString(4, qty);
            pst.setString(5, img);
            pst.setString(6, disc);

            int i = pst.executeUpdate();

            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                             out.println("alert('Product Add successfully ');");
                             out.println("location='product.jsp';");
                             out.println("</script>");
            } else {
                 out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='addproduct.jsp';");
                             out.println("</script>");
            }

            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='product.jsp';");
                             out.println("</script>");
        }
    }
%>
</body>
</html>