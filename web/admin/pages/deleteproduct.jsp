<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>

<%
    // Get the ID from the request (passed via the query string, for example, "deleteuser.jsp?ID=1")
    String pid = request.getParameter("pid");

    // Debug: Output the ID value to check what's being passed
    out.println("<script type=\"text/javascript\">");
    out.println("console.log('Received ID: " + pid + "');"); // Log the ID value to the browser console
    out.println("</script>");

    // Check if the ID is valid (it's numeric and not null/empty)
    if (pid == null || pid.trim().isEmpty() || !pid.matches("\\d+")) {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Invalid ID. Please provide a valid numeric ID.');");
        out.println("location='product.jsp';");
        out.println("</script>");
        return;
    }

    Connection con = null;
    PreparedStatement pst = null;

    try {
        // Load the JDBC driver (sun.jdbc.odbc.JdbcOdbcDriver is deprecated and works for legacy ODBC connections)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

        // Establish connection to the database (ensure the ODBC DSN 'footweardsn' is correctly configured)
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

        // Ensure that the ID exists in the database before attempting to delete
        String checkSql = "SELECT COUNT(*) FROM product WHERE pid = ?";
        pst = con.prepareStatement(checkSql);
        pst.setInt(1, Integer.parseInt(pid)); // Set the ID parameter for the query
        ResultSet rs = pst.executeQuery();

        if (rs.next() && rs.getInt(1) > 0) {
            // ID exists, perform the delete operation
            String sql = "DELETE FROM product WHERE pid = ?";
            pst = con.prepareStatement(sql);
            pst.setInt(1, Integer.parseInt(pid)); // Set the ID parameter for deletion

            // Execute the delete operation
            int i = pst.executeUpdate();

            // Check if the record was successfully deleted
            if (i > 0) {
                // If deletion was successful, show an alert and redirect
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Record Deleted Successfully');");
                out.println("location='product.jsp';");
                out.println("</script>");
            } else {
                // If no rows were affected (record not deleted), show an error message
                out.println("<script type=\"text/javascript\">");
                out.println("alert('No Record Found with the Given ID');");
                out.println("location='product.jsp';");
                out.println("</script>");
            }
        } else {
            // If ID doesn't exist in the database, show an error message
            out.println("<script type=\"text/javascript\">");
            out.println("alert('No Record Found with the Given ID');");
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
%>
