<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="java.lang.String.*" %>

<%
    // Retrieve parameters from request and session
    String uname = request.getParameter("uname");  
    String email = request.getParameter("email"); 
    String password = request.getParameter("password"); 
    String mno = request.getParameter("mno");  
    String address = request.getParameter("address"); 
    String pincode = request.getParameter("pincode"); 

    try {
        // Register the JDBC driver and establish a connection
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

        // Corrected query: Removed the extra comma before pname
        String query = "INSERT INTO reg (uname, email,password,mon,address, pincode) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(query);

        // Set the parameters for the PreparedStatement
        pst.setString(1, uname);
        pst.setString(2, email);
        pst.setString(3, password);
        pst.setString(4, mno);
        pst.setString(5, address); // Assuming price is a decimal number (can be changed to double if necessary)
        pst.setString(6, pincode);         // Assuming quantity is an integer (can be changed to int if necessary)

        // Execute the insert operation
        int i = pst.executeUpdate();
        
        if (i > 0) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('regi saved successfully');");
            out.println("location='login.jsp';");
            out.println("</script>");
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Failed to save the order. Please try again.');");
            out.println("location='signup.jsp';");  // Or wherever you want to redirect on failure
            out.println("</script>");
        }

        // Close resources
        pst.close();
        con.close();
    } catch (Exception e) {
        // Print the exception message
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Error occurred: " + e.getMessage() + "');");
        out.println("location='signup.jsp';");
        out.println("</script>");
        e.printStackTrace();
    }
%>
