<%@ page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date" %>
<%@ page import="java.sql.DriverManager, java.sql.ResultSet, java.sql.PreparedStatement, java.sql.Connection" %>
<%
    try {  
        // Load the JdbcOdbcDriver (deprecated)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  

        // Establish connection with the database via ODBC
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        
        // Retrieve the product ID from the request parameters
        String pid = request.getParameter("pid");

        // Using a Statement for querying the database
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM product");
        
        if (rs.next()) {
            String pname = rs.getString("pname");
            String price = rs.getString("price");
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
  <link rel="stylesheet" href="./css/index.css">
  <link href="https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap" rel="stylesheet">


</head>

<body>
  <div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="./imges/logo.png" class="logo-img">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link disabled nav-content" aria-current="page" href="">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./pages/login.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/signup.jsp">Sign up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/about.jsp">About us</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " href="pages/contact.jsp">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="pages/feedback.jsp">FeedBack</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="pages/gallary.jsp">Gallary</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </div>
  <div class="background-head">
    <h1 class="head">Luxury Stylish & Branded</h1>
    <p class="text">Up To 50% of</p>
    <button type="button" class="head-btn">Shop Now</button></a>
  </div>
  <div class="contentproduct">
    <div class="best-product">
      <h2 class="best-product-head">Best Products</h2>
      <div class="product">
        <div class="content">
          <a href="./pages/order.jsp?pid=<%= 42 %>">
          <img src="./imges/btsmen1.webp" class="product-img">
          <p class="pinfo">Men Brand Print Lace-Up Sneakers</p></a>
        </div>
        <div class="content">
          <a href="./pages/order.jsp?pid=<%= 43 %>">

          <img src="./imges/btsmen2.webp" class="product-img">
          <p class="pinfo">Original Luxury Branded Shoes</p></a>
        </div>
        <div class="content">
          <a href="./pages/order.jsp?pid=<%= 44 %>">

          <img src="./imges/btswmen1.webp" class="product-img">
          <p class="pinfo">Longwalk Branded High Ankle Comfortable Shoes</p></a>
        </div>
        <div class="content">          <a href="./pages/order.jsp?pid=<%= 39 %>">
          <img src="./imges/btskid1.webp" class="product-img">
          <p class="pinfo">ADIDAS Kids Sports Sandals</p></a>
        </div>
      </div>
    </div>
  </div>
  <div class="contentproduct">
    <div class="best-product2">
      <h2 class="best-product-head">Shop By Category</h2>
      <div class="product">
        <div class="content">
          <a href="./pages/ladieshill.jsp">
            <img src="./imges/ladiesbanner.jpg" class="product-img">
            <p class="pinfo">Womens</p>
          </a>
        </div>
        <div class="content">
          <a href="./pages/Mens.jsp">
            <img src="./imges/postermen.png" class="product-img">
            <p class="pinfo">Mens</p>
          </a>
        </div>
        <div class="content">
          <a href="./pages/kids.jsp">
            <img src="./imges/kidcategory.jpg" class="product-img">
            <p class="pinfo">Kids</p>
          </a>
        </div>
        <div class="content">
          <a href="./pages/sport.jsp">

          <img src="./imges/sports.webp" class="product-img">
          <p class="pinfo " style="font-size:20px ;font: weight 600px;"> Sports </p></a>

        </div>
      </div>
    </div>
  </div>
  <div class="footer-basic">
    <footer>
      <div class="social"><a href="#"><img src="./icon/facebook.png" class="icon "></i></a>
        <a href="#"><img src="./icon/instagram.png" class="icon"></i></a>
        <a href="#"><img src="./icon/snapchat.png" class="icon"></i></a>
      </div>
      <ul class="list-inline">
        <li class="list-inline-item"><a href="../user/home.jsp">Home</a></li>
        <li class="list-inline-item"><a href="../user/pages/contact.jsp">Contact</a></li>
        <li class="list-inline-item"><a href="../user/pages/about.jsp">About</a></li>
        <li class="list-inline-item"><a href="../user/pages/gallary.jsp">Gallary</a></li>
        <li class="list-inline-item"><a href="../user/pages/feedback.jsp">FeedBack</a></li>
      </ul>

    </footer>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>

</html>
<%
        } else {
            out.println("<h3>No product found with the given PID.</h3>");
        }

        // Close resources
        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");
    }
%>