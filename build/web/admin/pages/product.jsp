<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import = "java.lang.String.*"%>
<%
    String pid = (String) session.getAttribute("pid");
    int i = 1; // Initialize i to 1 for sequential numbering
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        
        // Get product details
        String query = "SELECT * FROM product";
        ResultSet rs = st.executeQuery(query);
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
  <link rel="stylesheet" href="../css/product.css">
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
            <li class="nav-item">
              <a class="nav-link nav-content" aria-current="page" href="product.jsp">Product</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="user.jsp">User</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="order.jsp">Order</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="report.jsp">Reports</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <div class="flex">
    <div class="opretion s1">
      <img src="../imges/add-product.png" class="img">
      <a href="addproduct.jsp" class="h2">
        <p class="h2">Add Product</p>
      </a>
    </div>
  </div>
  <table class="table">
    <thead>
        <tr>
            <th><strong>Sr. No.</strong></th>
            <th><strong>Product Name</strong></th>
            <th><strong>Price</strong></th>
            <th><strong>Category</strong></th>
            <th><strong>Quantity</strong></th>
            <th><strong>Image</strong></th>
            <th><strong>Description</strong></th>
            <th><strong>Update</strong></th>
            <th><strong>Delete</strong></th>
        </tr>
    </thead>
    <tbody>
       <%
       while (rs.next()) {
            int productId = rs.getInt("pid"); // Get product id as int
       %>
      <tr>
        <td><div class="style5"><%= i++ %></div></td> <!-- Sequential numbering starts here -->
        <td><div  class="style5"><%= rs.getString(2) %></div></td>
        <td><div class="style5"><%= rs.getString(3) %></div></td>
        <td><div  class="style5"><%= rs.getString(4) %></div></td>
        <td><div  class="style5"><%= rs.getString(5) %></div></td>
        <td><div  class="style5"><%= rs.getString(6) %></div></td>
        <td><div  class="style6"><%= rs.getString(7) %></div></td>
        <td><a href="update.jsp?pid=<%= productId %>"><i class="fas fa-edit"></i></a></td>
        <td><a href="deleteproduct.jsp?pid=<%= productId %>"><i class="fas fa-trash-alt"></i></a></td>
      </tr>
      <% 
       }
      %>
    </tbody>
  </table>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%
    // Close database resources
    rs.close();
    st.close();
    con.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>
