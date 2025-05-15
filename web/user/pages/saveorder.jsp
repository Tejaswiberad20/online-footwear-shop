<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="java.lang.String.*" %>

<%
    // Retrieve parameters from request and session
    String pid = request.getParameter("pid");      
    String id = (String) session.getAttribute("id");
    String uname = request.getParameter("uname");  
    String mno = request.getParameter("mno"); 
    String address = request.getParameter("address"); 
    String pname = request.getParameter("pname");  
    String price = request.getParameter("price"); 
    String qty = request.getParameter("qty"); 
    String totprice = request.getParameter("totprice"); 

    try {
        // Register the JDBC driver and establish a connection
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

        // Corrected query: Removed the extra comma before pname
        String query = "INSERT INTO [order] (uname, mno, address, pname, price, qty, totprice) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(query);

        // Set the parameters for the PreparedStatement
        pst.setString(1, uname);
        pst.setString(2, mno);
        pst.setString(3, address);
        pst.setString(4, pname);
        pst.setString(5, price); // Assuming price is a decimal number (can be changed to double if necessary)
        pst.setString(6, qty);         // Assuming quantity is an integer (can be changed to int if necessary)
        pst.setString(7, totprice); // Assuming total price is a decimal number (can be changed to double if necessary)

        // Execute the insert operation
        int i = pst.executeUpdate();
        
        if (i > 0) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Order saved successfully');");
            out.println("location='payment.jsp';");
            out.println("</script>");
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Failed to save the order. Please try again.');");
            out.println("location='order.jsp';");  // Or wherever you want to redirect on failure
            out.println("</script>");
        }

        // Close resources
        pst.close();
        con.close();
    } catch (Exception e) {
        // Print the exception message
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Error occurred: " + e.getMessage() + "');");
        out.println("location='order.jsp';");
        out.println("</script>");
        e.printStackTrace();
    }
%>
