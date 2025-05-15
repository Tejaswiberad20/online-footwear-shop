<%@page import="java.sql.*,java.util.*"%>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String msg = "";

    // Only perform login if email and password are not null
    if (email != null && password != null) {
        try {
            // Register JDBC driver
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

            // Open a connection to the database (ODBC Data Source)
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
            Statement st = con.createStatement();

            // Execute SQL query to check user credentials
            ResultSet rs = st.executeQuery("select * from reg where email='" + email + "' and password='" + password + "'");

            if (rs.next()) { // Check if a matching record is found
                // Set session attributes for login success
                session.setAttribute("id", rs.getString("id"));
                session.setAttribute("email", email);

                // Send success message and redirect to user dashboard
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Login Successful');");
                out.println("location='../home.jsp';");
                out.println("</script>");
            } else {
                // If no matching record is found, show an error message
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email or password incorrect');");
                out.println("location='login.jsp';");
                out.println("</script>");
            }

            // Close resources
            rs.close();
            st.close();
            con.close();
        } catch (Exception e) {
            // Handle any errors that occur during login
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Error: " + e.getMessage() + "');");
            out.println("location='login.jsp';");
            out.println("</script>");
        }
    }
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
    <link rel="stylesheet" href="../css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Font+Name:wght@weight&display=swap" rel="stylesheet">
</head>

<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="../imges/logo.png" class="logo-img"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
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

    <div class="form-body">
        <div class="left-body">
            <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTou6nbR8-2B90RQ2BufTZwzQT0wxU5ZA86o5Ons-9_n3_o8aFET02S7c58kdarQMOubR3kK9jP1EaInxlgGkQXhNzPgLzPKU1D-mmc_2f2UAAtdn-kdcVo"
                class="limg">
        </div>

        <div class="login">
            <div class="right-body">
                <!-- Login form -->
                <form method="post" action="login.jsp">
                    <p class="ltext">Email ID:</p>
                    <input type="text" class="input" name="email" value="">
                    <p class="ltext">Password:</p>
                    <input type="password" class="input" name="password">
                    <button type="submit" class="btn3">Login</button>
                </form>
                <p class="account">Don't Have An Account?<a href="./signup.jsp">Signup</a></p>
                <h2 class="account1">Admin <a href="../../admin/pages/adminlogin.jsp">Login</a></h2>
            </div>
        </div>
    </div>

    <div class="footer-basic">
        <footer>
            <div class="social">
                <a href="#"><img src="../icon/facebook.png" class="icon"></i></a>
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
