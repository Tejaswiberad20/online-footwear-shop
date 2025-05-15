<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import = "java.lang.String.*"%>

<%
    String oid = (String) session.getAttribute("oid");
    int i = 0;
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        // Load JDBC ODBC driver (legacy)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        st = con.createStatement();
       
        // Query to retrieve product details
        String query = "SELECT * FROM `order` order by oid desc";  // Specify the table name
        rs = st.executeQuery(query);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop</title>
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

    <h1 class="head">Manage Order </h1>

    <table width='100%' border=1 class="table">
        <thead>
            <tr bgcolor='#DDDDDD' align="center">
                <th><strong>Sr. No.</strong></th>
                <th><strong>Name</strong></th>
                <th><strong>Mobile No</strong></th>
                <th><strong>Address</strong></th>
                <th><strong>Product Name</strong></th>
                <th><strong>Price</strong></th>
                <th><strong>Quantity</strong></th>
                <th><strong>Total Price</strong></th>
                <th><strong>Status</strong></th> <!-- Status column with radio buttons -->
                <td><strong>Delete</strong></td>
            </tr>
        </thead>
        <tbody>
            <%
                // Iterate through the result set and display each row
                while (rs.next()) {
                    int orid = i+1;
                    i++;
                    String uname = rs.getString("uname");
                    String mno = rs.getString("mno");
                    String address = rs.getString("address");
                    String productName = rs.getString("pname");
                    String price = rs.getString("price");
                    String quantity = rs.getString("qty");
                    String totprice = rs.getString("totprice");
            %>
                <tr>
                    <td><%= orid %></td>
                    <td><%= uname %></td>
                    <td><%= mno %></td>
                    <td><%= address %></td>
                    <td><%= productName %></td>
                    <td><%= price %></td>
                    <td><%= quantity %></td>
                    <td><%= totprice %></td>
                    <td>
                        <!-- Radio buttons for "Conform" and "Not Conform" -->
                        <input type="radio"  value="Conform" /> Conform
                        <input type="radio"  value="Not Conform" /> Not Conform
                    </td>
                    <td><a href="orederdelete.jsp?oid=<%= orid %>"><i class="fas fa-trash-alt"></i></a></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

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
    // Properly close database resources in the finally block
    try {
        if (rs != null) {
            rs.close();
        }
        if (st != null) {
            st.close();
        }
        if (con != null) {
            con.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
