<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date" %>
<%@ page import="java.lang.String.*" %>
<%
    String ID = (String) session.getAttribute("ID");
    int i = 1; // Initialize i to 1 for sequential numbering
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        
        // Get user details
        String query = "SELECT * FROM reg ORDER BY id DESC";
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
</head>

<body>
  <div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img">
        </a>
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
      <img src="../imges/add-user (1).png" class="img">
      <a href="adduser.html" class="h2">
        <p class="h2">Add User</p>
      </a>
    </div>
  </div>
  <table class="table">
    <tr>
      <td><strong>Sr. No.</strong></td>
      <td><strong>Name</strong></td>
      <td><strong>Email</strong></td>
      <td><strong>Password</strong></td>
      <td><strong>Mobile No</strong></td>
      <td><strong>Address</strong></td>
      <td><strong>pincode</strong></td>
      <td><strong>Delete</strong></td>
    </tr>
    <%
        while(rs.next()) {
            int userid = rs.getInt("id");
            String uname = rs.getString("uname");
            String email = rs.getString("email");
            String mno = rs.getString("mno");
            String password = rs.getString("password");
            String address = rs.getString("address");
            String pincode = rs.getString("pincode");
    %>
    <tr>
        <td><%= i++ %></td> <!-- Sequential numbering starts here -->
        <td><%= uname %></td>
        <td><%= email %></td>
        <td><%= password %></td>
        <td><%= mno %></td>
        <td><%= address %></td>
        <td><%= pincode %></td>
        <td><a href="deleteuser.jsp?ID=<%= userid %>"><i class="fas fa-trash-alt"></i></a></td>
    </tr>
    <%
        }
    %>
  </table>
</body>

</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
