<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="java.lang.String.*" %>

<%
    String id = (String) session.getAttribute("id");
    String uname = request.getParameter("uname");  
    String card = request.getParameter("card"); 
    String creditcardno = request.getParameter("creditcardno"); 
    String cvv = request.getParameter("cvv");  

    // Log input parameters
    out.println("Received parameters: ");
    out.println("uname: " + uname);
    out.println("card: " + card);
    out.println("creditcardno: " + creditcardno);
    out.println("cvv: " + cvv);

    Connection con = null;
    PreparedStatement pst = null;
    try {
        // Register JDBC driver and open a connection
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

        // Corrected query
        String query = "INSERT INTO payment (uname, card, creditcardno, cvv) VALUES (?, ?, ?, ?)";
        pst = con.prepareStatement(query);

        // Set parameters to PreparedStatement
        pst.setString(1, uname);
        pst.setString(2, card);
        pst.setString(3, creditcardno);
        pst.setString(4, cvv);

        // Log query execution details
        System.out.println("Executing SQL: " + query);
        System.out.println("Parameters: " + uname + ", " + card + ", " + creditcardno + ", " + cvv);

        // Execute the update
        int result = pst.executeUpdate();
        
        if (result > 0) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment successfully processed');");
            out.println("location='bill.jsp';");
            out.println("</script>");
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment failed. Please try again.');");
            out.println("location='payment.jsp';");
            out.println("</script>");
        }
    } catch (Exception e) {
        // Log the exception details
        e.printStackTrace();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('An error occurred while processing your payment. Please try again.');");
        out.println("location='order.jsp';");
        out.println("</script>");
    } finally {
        // Close resources in a finally block to ensure they are closed even if there's an exception
        try {
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException se) {
            se.printStackTrace(); // Handle potential closing exceptions
        }
    }
%>
