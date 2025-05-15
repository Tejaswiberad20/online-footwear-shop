<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*, java.util.*, java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="java.lang.String.*" %>
<%
    String uname = "";  // Initialize uname variable
    
    try {  
        // Load JDBC driver
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        
        // Establish connection to the database
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        
        // Query to fetch the most recently registered user (you can modify this as per your requirement)
        ResultSet rs1 = st.executeQuery("SELECT TOP 1 * FROM reg ORDER BY id DESC");
        
        // Check if we get a result and fetch the username
        if (rs1.next()) {
            uname = rs1.getString("uname");
        }
        
        // Close resources
        rs1.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");  // Show error message to the user
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/payment.css">
</head>
<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="../imges/logo.png" class="logo-img"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="../home.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="signup.jsp">Sign up</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.jsp">About us</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="feedback.jsp">Feedback</a></li>
                        <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="form-body">
        <div class="left-body">
            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTou6nbR8-2B90RQ2BufTZwzQT0wxU5ZA86o5Ons-9_n3_o8aFET02S7c58kdarQMOubR3kK9jP1EaInxlgGkQXhNzPgLzPKU1D-mmc_2f2UAAtdn-kdcVo" class="limg">
        </div>
        <div class="login">
            <div class="right-body">
                <div class="form">
                    <!-- Form for payment details -->
                    <form action="savepayment.jsp" method="POST">
                        <h3 class="stext">User Name</h3>
                        <!-- Display the username fetched from the database -->
                        <input type="text" name="uname" class="input" id="name" value="<%= uname %>" readonly>

                        <h2 class="stext">Choose Card:</h2>
                        <select name="card" class="input">
                            <option value="Credit Card"name="card">Credit Card</option>
                            <option value="Debit Card"name="card">Debit Card</option>
                            <option value="VISA"name="card">VISA</option>
                        </select>

                        <h2 class="stext">Credit Card No:</h2>
                        <input type="password" name="creditcardno" class="input">

                        <h2 class="stext">CVV:</h2>
                        <input type="password" name="cvv" class="input">

                        <button type="submit" class="btn">Pay Now</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer-basic">
        <footer>
            <div class="social">
                <a href="#"><img src="../icon/facebook.png" class="icon"></a>
                <a href="#"><img src="../icon/instagram.png" class="icon"></a>
                <a href="#"><img src="../icon/snapchat.png" class="icon"></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">Contact</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
                <li class="list-inline-item"><a href="#">Gallery</a></li>
                <li class="list-inline-item"><a href="#">Feedback</a></li>
            </ul>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
