

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*, java.text.SimpleDateFormat, java.util.Date" %>

<%
    String id = (String) session.getAttribute("id");
    int i = 1;
    String set_value;
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        // Using the deprecated JdbcOdbcDriver (Only for legacy use, avoid in production)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  // Load the JDBC ODBC driver
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");  // Use the ODBC DSN connection string
        st = con.createStatement();
        
        // Example query fetching order details (Ensure correct table name)
        String query = "SELECT * FROM [payment]";
        
        out.println("Executing query: " + query); // Debugging output to check if the query is being executed
        
        rs = st.executeQuery(query);

        // Check if we have any data
        if (!rs.next()) {
            out.println("<p>No data found in the orders table.</p>"); // No data in the result set
        } else {
            // If data exists, print it
            out.println("<p></p>");
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
            border: 1px solid #999999; /* Border for table, th, and td */
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
        }</style>
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

    <h1 class="head">Payment Report</h1>

    <div id="rpt">
        <table width='100%' border=1 class="table">
            <thead>
                <tr bgcolor='#DDDDDD'>
                    <th ><strong align="start">Sr. No.</strong></th>
                    <th align="start"><strong>Name</strong></th>
                    <th align="start"><strong>Card</strong></th>
                    <th align="start"><strong>Card No</strong></th>
                    <th align="start"><strong>Cvv</strong></th>
                   
                </tr>
            </thead>
            <tbody>
                <%
                    // Only use 'rs.next()' to iterate over rows
                    while (rs.next()) {
                %>
                    <tr>
                        <td align="start"><%= i++ %></td>
                        <td align="start"><%= rs.getString(2) %></td>
                        <td align="start"><%= rs.getString(3) %></td>
                        <td align="start"><%= rs.getString(4) %></td>
                        <td align="justify"><%= rs.getString(5) %></td>
                        

                    </tr>
                <%
                    }
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
            popupWin.document.write('<html><body onload="window.print()"><center><br><div style="color: #FFFFFF;font-family:Apple Chancery, cursive;text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;font-style:italic;color: #FFFFFF;"><h1 align="center"><u>Payment Report</u></h1></div><h3><u>Payment Report</u></h3>' + divToPrint.innerHTML + '</center></body></html>');
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







