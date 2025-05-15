<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*, java.text.SimpleDateFormat, java.util.Date" %>

<%
    String oid = (String) session.getAttribute("oid");
    int i = 1;  // Initialize the counter for Sr. No.
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        // Using the deprecated JdbcOdbcDriver (Only for legacy use, avoid in production)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  // Load the JDBC ODBC driver
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");  // Use the ODBC DSN connection string
        st = con.createStatement();
        
        // Example query fetching order details (Ensure correct table name)
        String query = "SELECT * FROM [order]";
        
        rs = st.executeQuery(query);

        // Check if we have any data
        if (!rs.next()) {
            out.println("<p>No data found in the orders table.</p>"); // No data in the result set
        } else {
            // If data exists, proceed to display it
        }
        
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwearshp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/rpt.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid gray; /* Border for table, th, and td */
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2; /* Light gray background for headers */
        }
        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light background for alternate rows */
        }
    </style>
</head>

<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link nav-content" href="product.jsp">Product</a></li>
                        <li class="nav-item"><a class="nav-link" href="user.jsp">User</a></li>
                        <li class="nav-item"><a class="nav-link" href="order.jsp">Order</a></li>
                        <li class="nav-item"><a class="nav-link" href="report.jsp">Reports</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <h1 class="head">Order Report</h1>

    <div id="rpt">
        <table class="table">
            <thead>
                <tr>
                    <th><strong>Sr. No.</strong></th>
                    <th><strong>Name</strong></th>
                    <th><strong>Mobile No</strong></th>
                    <th><strong>Address</strong></th>
                    <th><strong>Product Name</strong></th>
                    <th><strong>Price</strong></th>
                    <th><strong>Quantity</strong></th>
                    <th><strong>Total Price</strong></th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Iterate over the ResultSet rows
                    do {
                %>
                    <tr>
                        <td><%= i++ %></td> <!-- Sequential numbering for Sr. No. -->
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                        <td><%= rs.getString(6) %></td>
                        <td><%= rs.getString(7) %></td>
                        <td><%= rs.getString(8) %></td> 
                    </tr>
                <%
                    } while (rs.next());  // Continue while there are more rows
                %>
            </tbody>
        </table>
    </div>

    <button type="button" class="btn btn-primary" onClick="myFunction()">Print Report</button>

    <script type="text/javascript">
        function myFunction() {
            var divToPrint = document.getElementById('rpt');
            var popupWin = window.open('', '_blank');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()"><center><br><div style="color: #FFFFFF;font-family:Apple Chancery, cursive;text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;font-style:italic;color: #FFFFFF;"><h1 align="center"><u>Order Report</u></h1></div><h3><u>Order Report</u></h3>' + divToPrint.innerHTML + '</center></body></html>');
            popupWin.document.close();
        }
    </script>

</body>

</html>

<%
    } catch (Exception e) {
        e.printStackTrace(); // Log the error for debugging
        out.println("<p>Error occurred: " + e.getMessage() + "</p>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace(); // Log the error for debugging
        }
    }
%>
