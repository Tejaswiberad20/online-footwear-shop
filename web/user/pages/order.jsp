
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date" %>
<%@ page import="java.io.InputStream, java.io.FileInputStream, java.io.File" %>
<%@ page import="java.sql.DriverManager, java.sql.ResultSet, java.sql.PreparedStatement, java.sql.Connection" %>

<%
    // No need to pass ID or category here if you're fetching the first registered user
    try {  
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement(); 
        
        // Use TOP 1 instead of LIMIT 1 for Access
        ResultSet rs1 = st.executeQuery("SELECT TOP 1 * FROM reg ORDER BY id DESC");
        
        if (rs1.next()) {
            String uname = rs1.getString("uname");
            String mno = rs1.getString("mno");
            String address = rs1.getString("address");

            // Now, you can fetch the product details as before.
            // Assuming you are still passing `pid` (product id) from the previous request
            String pid = request.getParameter("pid");
            ResultSet rs2 = st.executeQuery("SELECT * FROM product WHERE pid=" + pid);
            if (rs2.next()) {
                String pname = rs2.getString("pname");
                String price = rs2.getString("price");
                String qty = rs2.getString("qty");
                String disc = rs2.getString("disc");

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
  <link rel="stylesheet" href="../css/order.css">
  <style>
      .same{
    border:none;
}
.pname{
    margin-top: 20px;
    border: none;
    width:100%;
}

.box{
display: block;
margin: 50px auto;
box-shadow:0 0 10px 0px #0066ff;
background-color: #fff;
border-radius:10px;
padding: 10px 20px;
height: 650px;
width: 550px;
}
.box:hover{
box-shadow:0 0 30px 0px #0066ff;
}

.ordetails{
display:flex;
}
.h1{
margin-top:10px;
}
.input{
width: 350px;
height: 30px;
}
.form{
margin-left:80px;
}
.itext{
color:#000;
font-size: 20px;
}
.btn{
background-color:#0066ff;
color:#fff;
border:solid 1px #fff;
display: block;
margin: 20px auto;
width:150px;
box-shadow:0 0 5px 1px #0066ff;
}
.btn:hover{
box-shadow:0 0 10px 1px #0066ff;
border:none;
background-color:#0066ff;
color:#fff;

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
<div class="box">
            <form action="saveorder.jsp" method="POST"class="form">
             <input type="text"name="pname"value="<%=pname%>" class="pname">
            <h3 class="  itext">User Name</h3>
            <input type="text"name="uname"value="<%=uname%>"class="input"name="uname"> 
            <h3 class=" itext">Mobile No</h3>
            <input type="text"name="mno"value="<%=mno%>"class="input"class="mno"> 
            <h3 class=" itext">Address</h3>
            <input type="text"name="address"value="<%=address%>"class="input"name="address"> 
            <h3 class=" itext">Price</h3>

            <input type="text"class="input"value="<%=price%>"id="price"name="price">
            <h3 class=" itext">Quantity</h3>

            <input type="number" class="input"id="quantity" onchange="cal_amount()"name="qty"></p>
            <h3 class=" itext">Total Price</h3>

            <input type="itext" class="input"id="totprice"name="totprice"></p>
           
                <button class="btn"> Order</button>
            
            </form>
    </div>  <div class="footer-basic">
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
        <li class="list-inline-item"><a href="#">Gallary</a></li>
        <li class="list-inline-item"><a href="#">FeedBack</a></li>
      </ul>
    </footer>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>
</html>
<script>
    function cal_amount() {
      let quantity = parseInt(document.getElementById("quantity").value);
      let price = parseInt(document.getElementById("price").value);
      if (!isNaN(quantity) && !isNaN(price)) {
        let total = price * quantity;
        document.getElementById("totprice").value = total.toString();
      } else {
        document.getElementById("totprice").value = "Invalid input";
      }
    }
  </script>
<%
        } else {
            out.println("<h3>No product found with the given PID.</h3>");
        }
    } else {
        out.println("<h3>No user found in the database.</h3>");
    }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");
    }
%>
