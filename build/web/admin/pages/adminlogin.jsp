<%@ page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date" %>
<%@ page import="java.sql.DriverManager, java.sql.ResultSet, java.sql.PreparedStatement, java.sql.Connection" %>
<%
    try {  
        // Load the JdbcOdbcDriver (deprecated)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  

        // Establish connection with the database via ODBC
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        
        // Retrieve the product ID from the request parameters
        String id = request.getParameter("id");

        // Using a Statement for querying the database
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM adminlogin");
        
        if (rs.next()) {
            String email = rs.getString("email");
            String password = rs.getString("password");
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
  <link rel="stylesheet" href="../../user/css/style.css">
  <link rel="stylesheet" href="../../user/css/login.css">
  <link href="https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap" rel="stylesheet">


</head>

<body>

  <div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img
            src="../../user/imges/logo.png"
            class="logo-img">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link " aria-current="page" href="../../index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../user/pages/login.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../user/pages/signup.jsp">Sign up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../user/pages/about.jsp">About us</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " href="../../user/pages/contact.jsp">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="../../user/pages/feedback.jsp">FeedBack</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="../../user/pages/gallary.jsp">Gallary</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>    
  <div class="form-body">
    <div class="left-body">
        <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTou6nbR8-2B90RQ2BufTZwzQT0wxU5ZA86o5Ons-9_n3_o8aFET02S7c58kdarQMOubR3kK9jP1EaInxlgGkQXhNzPgLzPKU1D-mmc_2f2UAAtdn-kdcVo"
        class="limg">

    </div>
<div class="login">
    <div class="right-body">
        <form action="adminlogin.jsp"method="post">
            <p class="ltext">Email ID:</p> 
            <input type="text"class="input"name="email"id="email"value="<%=email%>">
            <p class="ltext">Password:</p> 
            <input type="password" class="input"name="password"id="password"value="<%=password%>">
            <a href="home.jsp"style="text-decoration:none";> <button type="button" class="btn3">Login</button>
           </a>
        </form>
        

    </div>
</div>
</div>

<div class="footer-basic">
  <footer>
    <div class="social"><a href="#"><img src="../../user/icon/facebook.png" class="icon "></i></a>
      <a href="#"><img src="../../user/icon/instagram.png" class="icon"></i></a>
      <a href="#"><img src="../../user/icon/snapchat.png" class="icon"></i></a>
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