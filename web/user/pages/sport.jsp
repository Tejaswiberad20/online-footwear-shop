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
  <link rel="stylesheet" href="../css/style.css">
      <link rel="stylesheet" href="../css/product.css">

  <link href="https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap" rel="stylesheet">


</head>

<body>
  <div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img
          src="../imges/logo.png"
          class="logo-img">
      </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link " aria-current="page" href="../home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="signup.jsp">Sign up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About us</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " href="contact.jsp">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="feedback.jsp">FeedBack</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="gallary.jsp">Gallary</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </div>
  <h1 class="text-center h1">Sports</h1>
  <div class="product-box">
    <div class="product-info">
        <img src="../imges/s1.webp"class="product-img">
        <h2 class="product-name">Athleisure Sports Shoes for Men</h2>
        <p class="price">Rs.399</p>
<a href="order.jsp?pid=<%= 23 %>">
   <button class="btn btn-primary">Buy Now</button>
</a>

    </div>

    <div class="product-info">
        <img src="../imges/s2.webp"class="product-img">
        <h2 class="product-name">Sports Sneakers Running Shoes Running Shoes For Men  (Blue , 8)
</h2>
        <p class="price">Rs.699</p>
        <a href="order.jsp?pid=<%= 24 %>">
            <button class="btn btn-primary">Buy Now</button></a>
    </div>

    <div class="product-info">
        <img src="../imges/s3.jpg"class="product-img">
        <h2 class="product-name">Shozie Women Casual Walking and Running Sports Shoes Black,Colour</h2>
        <p class="price">Rs.769</p>
         <a href="order.jsp?pid=<%= 25 %>">
            <button class="btn btn-primary">Buy Now</button></a>
    </div>

    <div class="product-info">
        <img src="../imges/s4.webp"class="product-img">
        <h2 class="product-name">shoes White Sneakers for Women Girls
        </h2>
        <p class="price">Rs.180</p>
        <a href="order.jsp?pid=<%= 26 %>">
            <button class="btn btn-primary">Buy Now</button></a>
    </div>

    <div class="product-info">
      <img src="../imges/s5.webp"class="product-img">
      <h2 class="product-name">Blue Solid Men Running Sport Shoes for Men </h2>
      <p class="price">Rs.180</p>
     <a href="order.jsp?pid=<%= 27 %>">
            <button class="btn btn-primary">Buy Now</button></a>
  </div>

  <div class="product-info">
      <img src="../imges/s6.jpg"class="product-img">
      <h2 class="product-name">Corvebse Casual Wear Mens Stylish Sneaker Shoes
    </h2>
      <p class="price">Rs.489</p>
 <a href="order.jsp?pid=<%= 28 %>">
            <button class="btn btn-primary">Buy Now</button></a>  </div>

  <div class="product-info">
      <img src="../imges/s7.jpg"class="product-img">
      <h2 class="product-name"> Women Sports Shoes | Walking Running Gym Shoes </h2>
      <p class="price">Rs.599</p>
       <a href="order.jsp?pid=<%= 29 %>">
            <button class="btn btn-primary">Buy Now</button></a>
  </div>

  <div class="product-info">
      <img src="../imges/s8.jpeg"class="product-img">
      <h2 class="product-name">ROGER-M RUNNING SPORTS SHOES FOR MEN</h2>
      <p class="price">Rs.499</p>
      <a href="order.jsp?pid=<%= 30 %>">
            <button class="btn btn-primary">Buy Now</button></a>
  </div>

  </div>

  <div class="footer-basic">
    <footer>
      <div class="social"><a href="#"><img src="../icon/facebook.png" class="icon "></i></a>
        <a href="#"><img src="../icon/instagram.png" class="icon"></i></a>
        <a href="#"><img src="../icon/snapchat.png" class="icon"></i></a>
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
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>
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