<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*, java.text.SimpleDateFormat, java.util.Date" %>

<%
    String oid = request.getParameter("oid");  // Get the order ID from the URL parameter
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  // Load the JDBC ODBC driver
        con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");  // ODBC DSN connection string
        st = con.createStatement();
        String query = "SELECT * FROM [order] WHERE oid=" + oid;
        rs = st.executeQuery(query);

        if (rs.next()) {
            String pname = rs.getString("pname");
            String uname = rs.getString("uname");
            String mno = rs.getString("mno");
            String address = rs.getString("address");
            String price = rs.getString("price");
            String qty = rs.getString("qty");
            String totprice = rs.getString("totprice");
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop - Update Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/addproduct.css">        <style>
        body {
            background-size: cover;
        }
        .nav-link {
            margin-left: 50px;
        }
        .form {
            display: block;
            margin: 50px auto;
            height: 640px;
            width: 400px;
            box-shadow: 0 0 5px 0px #6a4af7;
            padding: 10px 20px;
            border-radius: 10px;
            text-align: center;
            background-color: #d7d4f8;
        }
        .input {
            width: 300px;
            height: 35px;
            border: solid 1px #c0bebe;
            border-radius: 10px;
        }
        .btn {
            display: block;
            margin: 20px auto;
            box-shadow: 0 0 5px 0px blue;
            padding: 10px 20px;
            border-radius: 10px;
            text-align: center;
            background-color: #6a4af7;
            color: #fff;
            width: 200px;
        }
        .text {
            text-align: start;
        }
    </style>
</head>
<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img" alt="Logo"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="product.jsp">Product</a></li>
                        <li class="nav-item"><a class="nav-link" href="user.jsp">User</a></li>
                        <li class="nav-item"><a class="nav-link" href="order.jsp">Order</a></li>
                        <li class="nav-item"><a class="nav-link" href="report.jsp">Reports</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <!-- Product Update Form -->
    <form action="processor_update.jsp" method="POST" class="form">
        <input type="hidden" name="oid" value="<%= oid %>">
        <h2 class="text">User Name:</h2>
        <input type="text" name="uname" value="<%= uname %>"  class="input">
        
        <h2 class="text">Mobile No:</h2>
        <input type="text" name="mno" value="<%= mno %>"  class="input">
        
        <h2 class="text">Address:</h2>
        <input type="text" name="address" value="<%= address %>"  class="input">
        
        <h2 class="text">Product Name:</h2>
        <input type="text" name="pname" value="<%= pname %>"  class="input">
        
        <h2 class="text">Price:</h2>
        <input type="text" name="price" value="<%= price %>"  class="input">
        
        <h2 class="text">Quantity</h2>
        <input type="number" name="qty" value="<%= qty %>"  class="input">
        
       <h2 class="text">Total Price:</h2>
        <input type="text" name="totprice" value="<%= totprice %>" class="input">
        
        <button type="submit" class="btn btn-primary">Update Order</button>
    </form>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


<%
    } else {
        out.println("Order not found with the given ID.");
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>