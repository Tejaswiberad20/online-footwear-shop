<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/contact.css">
    <style>
        .right-body{
    margin-top: 50px;
    margin-left: 20px ;
}
    </style>
</head>

<body>
<%
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String yesno = request.getParameter("yesno");
    String msg = request.getParameter("msg");

    if (uname != null && email != null) { // Check if the form is submitted
        try {
            // Load the JDBC-ODBC Bridge Driver
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

            // Connect to the ODBC data source (you must configure 'footweardsn' in your system)
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

            // SQL Query with correct syntax (wrap table and columns in [ ])
            String query = "INSERT INTO [feedback] ([uname], [email], [yesno], [msg]) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);

            // Set the parameter values
            pst.setString(1, uname);
            pst.setString(2, email);
            pst.setString(3, yesno);
            pst.setString(4, msg);

            // Execute the query
            int i = pst.executeUpdate();

            if (i > 0) {
%>
                <script type="text/javascript">
                    alert('Feedback Sent Successfully');
                    window.location = 'feedback.jsp';
                </script>
<%
            } else {
%>
                <script type="text/javascript">
                    alert('Data Not Inserted');
                    window.location = 'feedback.jsp';
                </script>
<%
            }

            // Close connections
            pst.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
%>
            <script type="text/javascript">
                alert('Error: <%= e.getMessage() %>');
                window.location = 'feedback.jsp';
            </script>
<%
        }
    }
%>

<!-- Navigation Bar -->
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

<h1 class="contact-head">Feedback</h1>
<div class="form-body">
    <div class="left-body">
        <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTou6nbR8-2B90RQ2BufTZwzQT0wxU5ZA86o5Ons-9_n3_o8aFET02S7c58kdarQMOubR3kK9jP1EaInxlgGkQXhNzPgLzPKU1D-mmc_2f2UAAtdn-kdcVo" class="limg">
    </div>
    <div class="right-body">
        <form action="feedback.jsp" method="POST">
            <p class="ltext">User Name:</p>
            <input type="text" name="uname" class="input" id="uname" required>

            <p class="ltext">Email:</p>
            <input type="text" name="email" class="input" id="email" required>

            <h2 class="ltext">Do You like our service?</h2>
            <input type="radio" name="yesno" value="yes" required> Yes
            <input type="radio" name="yesno" value="no" required> No

            <p class="ltext">Message:</p>
            <input type="text" name="msg" class="input" id="msg" required>

            <button type="submit" class="btn3">Send</button>
        </form>
    </div>
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
