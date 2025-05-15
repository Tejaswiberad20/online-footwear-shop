<%--  
    Document   : index
    Created on : 18 Jan, 2025, 8:16:09 PM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CosmeticProduct</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/addproduct.css">
</head>
<body>
    <%
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String mno = request.getParameter("mno");
    String address = request.getParameter("address");
    String pincode = request.getParameter("pincode");

    if (uname != null && email != null) { // Check if form was submitted
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");

            String query = "INSERT INTO reg (uname, email, password, mno, address, pincode) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, uname);
            pst.setString(2, email);
            pst.setString(3, password);
            pst.setString(4, mno);
            pst.setString(5, address);
            pst.setString(6, pincode);

            int i = pst.executeUpdate();

            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                             out.println("alert('user add');");
                             out.println("location='adduser.jsp';");
                             out.println("</script>");
            } else {
                 out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='adduser.jsp';");
                             out.println("</script>");
            }

            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='adduser.jsp';");
                             out.println("</script>");
        }
    }
%>
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
              <div class="btn-group dropstart bg-light">
              </div>
            </div>
          </div>
        </nav>
      </div>
    <h1 style="text-align:center;color:#6a4af7;margin-top:20px;">Add New Product</h1>
       <form class="addproduct1" action="adduser.jsp" method="post">
                <h3 class="text">User Name</h3>
                <input type="text" placeholder="User Name" name="uname" class="input" id="uname" required>

                <h3 class="text">Email</h3>
                <input type="email" placeholder="Email Id" name="email" class="input" id="email" required>

                <h3 class="text">Password</h3>
                <input type="password" placeholder="Password" name="password" class="input" id="password">

                <h3 class="text">Mobile No</h3>
                <input type="text" placeholder="Mobile No" name="mno" class="input" id="mno" required>

                <h3 class="text">Address</h3>
                <input type="text" placeholder="Address" name="address" class="input" id="address" required>

                <h3 class="text">Pincode</h3>
                <input type="text" placeholder="Pincode" name="pincode" class="input" id="pincode" required>

                <button type="submit" class="btn">Add</button>    
            </form>
</body>
</html>
