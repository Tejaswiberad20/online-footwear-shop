<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import = "java.lang.String.*"%>
<%
    String pid = (String) session.getAttribute("pid");
    int i = 0;
    try {
        // Load JDBC ODBC driver (legacy)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        
        // Correct SQL query to filter by 'Mens' category
        String query = "SELECT * FROM product WHERE category='Womens'";
        ResultSet rs = st.executeQuery(query);
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Footwearshop</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/product.css">
  <link href="https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap" rel="stylesheet">
  <style>
    /* Flexbox layout for product box */
    .product-box {
      display: flex; 
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 20px;
      margin-top: 20px;
      margin-bottom: 20px;
      padding: 20px;
    }

    /* Styling individual product cards */
    .product-info {
      height: 430px;
      width: 250px;
      margin: 10px;
      box-shadow: 0 0 7px 0px #adabab;
      border-radius: 5px;
      text-align: center;
      transition: 0.5s;
    }

    .product-info:hover {
      transform: translateY(-9px);
      box-shadow: 0 0 10px 1px #cecccc;
    }

    .product-img {
      height: 240px;
      width: 247px;
      border-radius: 5px;
    }

    .product-name {
      margin: 10px;
      font-size: 20px;
      text-align: center;
    }

    .price {
      font-weight: 600;
      font-size: 30px;
      text-align: center;
    }

    .price::before {
      content: 'Price: ';
      font-size: 20px;
      font-weight: 400;
    }

    .btn-buynow {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      background-color: blue;
      width: 200px;
      color: #fff;
      display: block;
      margin: 10px auto;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      box-shadow: 0 0 5px 0px #5c5b5b;
      font-size: 20px;
      transition: 0.5s;
    }

    .btn-buynow:active {
      background-color: #0066ff;
      box-shadow: 0 0 10px 1px #dd3030;
    }
  </style>
</head>

<body>
  <div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="../imges/logo.png" class="logo-img"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item"><a class="nav-link" href="../home.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
            <li class="nav-item"><a class="nav-link" href="signup.jsp">Sign up</a></li>
            <li class="nav-item"><a class="nav-link" href="about.jsp">About us</a></li>
            <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="feedback.jsp">FeedBack</a></li>
            <li class="nav-item"><a class="nav-link" href="gallary.jsp">Gallary</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>

  <h1 class="text-center h1">Womens</h1>

  <div class="product-box">
    <%
      while (rs.next()) {
          int productId = rs.getInt("pid");
          String productName = rs.getString("pname");
          String price = rs.getString("price");
          String category = rs.getString("category");
          String quantity = rs.getString("qty");
          String image = rs.getString("img");
          String description = rs.getString("disc");

          String imagePath = "../imges/" + image;
    %>

    <div class="product-info">
      <img src="<%= imagePath %>" class="product-img" alt="<%= productName %>">
      <h2 class="product-name"><%= productName %></h2>
      <p class="price">Rs.<%= price %></p>
      <a href="order.jsp?pid=<%= productId %>">
        <button class="btn btn-primary">Buy Now</button>
      </a>
    </div>

    <% } %>
  </div>

  <div class="footer-basic">
    <footer>
      <div class="social">
        <a href="#"><img src="../icon/facebook.png" class="icon "></a>
        <a href="#"><img src="../icon/instagram.png" class="icon"></a>
        <a href="#"><img src="../icon/snapchat.png" class="icon"></a>
      </div>
      <ul class="list-inline">
        <li class="list-inline-item"><a href="#">Home</a></li>
        <li class="list-inline-item"><a href="#">Contact</a></li>
        <li class="list-inline-item"><a href="#">About</a></li>
        <li class="list-inline-item"><a href="#">Gallary</a></li>
        <li class="list-inline-item"><a href="#">FeedBack</a></li>
      </ul>
    </footer>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
