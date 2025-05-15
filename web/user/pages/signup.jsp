<%--
    Document   : index
    Created on : 18 Jan, 2025, 8:16:09 PM
    Author     : HP
--%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String mno = request.getParameter("mno");
    String address = request.getParameter("address");
    String pincode = request.getParameter("pincode");

    if (uname != null && email != null) { // Check if form was submitted
        try {
            // Load the sun.jdbc.odbc.JdbcOdbcDriver
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  

            // Establish a connection to the database via ODBC
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

            // SQL query to insert user details into the "reg" table
            String query = "INSERT INTO reg (uname, email, password, mno, address, pincode) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);

            // Set the values in the query
            pst.setString(1, uname);   // uname is a string
            pst.setString(2, email);   // email is a string
            pst.setString(3, password); // password is a string
            pst.setString(4, mno);     // mno (mobile number) is a string
            pst.setString(5, address); // address is a string
            pst.setString(6, pincode); // pincode is a string

            // Execute the query and get the result
            int i = pst.executeUpdate();

            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration is successfully done');");
                out.println("location='login.jsp';");
                out.println("</script>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data not inserted');");
                out.println("location='signup.jsp';");
                out.println("</script>");
            }

            // Close the PreparedStatement and Connection
            pst.close();
            con.close();
        } catch (Exception e) {
            // Print the exception stack trace for debugging
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Data not inserted');");
            out.println("location='signup.jsp';");
            out.println("</script>");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/signup.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>

<div class="background fs-4 shadow">
    <nav class="navbar navbar-expand-lg nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="../imges/logo.png" class="logo-img"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
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
            <form class="form" action="signup.jsp" method="post">
                <h3 class="stext">User Name</h3>
                <input type="text" placeholder="User Name" name="uname" class="input" id="uname" required>

                <h3 class="stext">Email</h3>
                <input type="email" placeholder="Email Id" name="email" class="input" id="email" required>

                <h3>Password</h3>
                <input type="password" placeholder="Password" name="password" class="input" id="password" required>

                <h3 class="stext">Mobile No</h3>
                <input type="text" placeholder="Mobile No" name="mno" class="input" id="mno" required>

                <h3 class="stext">Address</h3>
                <input type="text" placeholder="Address" name="address" class="input" id="address" required>

                <h3 class="stext">Pincode</h3>
                <input type="text" placeholder="Pincode" name="pincode" class="input" id="pincode" required>

                <button type="submit" class="btn">Sign up</button>    
                <p class="account">Already Have An Account? <a href="login.jsp">Login</a></p>
            </form>
        </div>
    </div>
</div>

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
        // Function to validate the form
        function validateForm() {
            // Get the form values
            var uname = document.getElementById('uname').value;
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;
            var mno = document.getElementById('mno').value;
            var address = document.getElementById('address').value;
            var pincode = document.getElementById('pincode').value;

            // Validate User Name
            if (uname === "") {
                alert("User Name is required");
                return false;
            }

            // Validate Email with regex
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (email === "") {
                alert("Email is required");
                return false;
            } else if (!emailPattern.test(email)) {
                alert("Please enter a valid email address");
                return false;
            }

            // Validate Password (min 6 characters)
            if (password === "") {
                alert("Password is required");
                return false;
            } else if (password.length < 6) {
                alert("Password must be at least 6 characters long");
                return false;
            }

            // Validate Mobile Number (only numbers, 10 digits)
            var phonePattern = /^[0-9]{10}$/;
            if (mno === "") {
                alert("Mobile Number is required");
                return false;
            } else if (!phonePattern.test(mno)) {
                alert("Please enter a valid mobile number (10 digits)");
                return false;
            }

            // Validate Address
            if (address === "") {
                alert("Address is required");
                return false;
            }

            // Validate Pincode (only numbers, 6 digits)
            var pincodePattern = /^[0-9]{6}$/;
            if (pincode === "") {
                alert("Pincode is required");
                return false;
            } else if (!pincodePattern.test(pincode)) {
                alert("Please enter a valid pincode (6 digits)");
                return false;
            }

            return true; // Submit the form if all validations pass
        }
    </script>

</body>
</html>
