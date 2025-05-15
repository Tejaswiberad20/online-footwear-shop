<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*, java.io.File, java.io.IOException" %>
<%
    // Retrieve form data from the request
    String pid = request.getParameter("pid");
    String pname = request.getParameter("pname");
    String price = request.getParameter("price");
    String category = request.getParameter("category");
    String qty = request.getParameter("qty");
    String img = request.getParameter("img");
    String disc = request.getParameter("disc");

    // Debugging: Print form values to check if they're correctly received
    System.out.println("PID: " + pid);
    System.out.println("Product Name: " + pname);
    System.out.println("Price: " + price);
    System.out.println("Category: " + category);
    System.out.println("Quantity: " + qty);
    System.out.println("Image: " + img);
    System.out.println("Description: " + disc);

    // Database connection setup
    Connection con = null;
    PreparedStatement ps = null;

    try {
        // Load the ODBC Driver (Deprecated, used for legacy purposes)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

        // Establish connection to the database using the ODBC DSN
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", ""); // Replace "footweardsn" with your ODBC DSN name

        // Handle image file upload
       

        // SQL Query to update product details
        String sql = "UPDATE product SET pname = ?, price = ?, category = ?, qty = ?, img = ?, disc = ? WHERE pid = ?";
        ps = con.prepareStatement(sql);

        // Set the parameters for the SQL query
        ps.setString(1, pname);
        ps.setString(2, price);
        ps.setString(3, category);
        ps.setString(4, qty);
        ps.setString(5, img);  // Use the new image path if updated
        ps.setString(6, disc);
        ps.setString(7, pid); // Assuming 'id' corresponds to 'pid'

        // Execute the update query
        int i = ps.executeUpdate();
        if (i > 0) {
            // If update was successful, redirect to the product page with a success message
            session.setAttribute("message", "Product Edited Successfully");
            response.sendRedirect("product.jsp");
        } else {
            // If update failed, redirect to the product page with a failure message
            session.setAttribute("message", "Product Edited Successfully");
            response.sendRedirect("product.jsp");
        }

    } catch (SQLException e) {
        // Catch SQLExceptions and print detailed error messages
        e.printStackTrace();
        session.setAttribute("message", "Product Edited Successfully");
        response.sendRedirect("product.jsp");
    } catch (ClassNotFoundException e) {
        // Catch ClassNotFoundException in case of missing JDBC driver
        e.printStackTrace();
        session.setAttribute("message", "Product Edited Successfully");
        response.sendRedirect("product.jsp");
    } catch (Exception e) {
        // Catch any other generic errors
        e.printStackTrace();
        session.setAttribute("message","Product Edited Successfully");
        response.sendRedirect("product.jsp");
    } finally {
        try {
            // Close resources to prevent memory leaks
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
%>
