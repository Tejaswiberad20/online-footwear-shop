<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat,java.util.Date"%>

<%
    String id = (String) session.getAttribute("id");
    int i = 0;
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        String query = "SELECT * FROM product";
        ResultSet rs = st.executeQuery(query);
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwearshp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/rpt.css">
    <link rel="stylesheet" href="../css/product.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #999999;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>

<body>
    <div class="background fs-4 shadow">
        <nav class="navbar navbar-expand-lg nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="../../user/imges/logo.png" class="logo-img"></a>
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
                </div>
            </div>
        </nav>
    </div>
    
    <h1 class="head">Product Report</h1>

    <div id="rpt">
        <table class="table">
            <thead>
                <tr>
                    <th><strong>Sr. No.</strong></th>
                    <th><strong>Product Name</strong></th>
                    <th><strong>Price</strong></th>
                    <th><strong>Category</strong></th>
                    <th><strong>Quantity</strong></th>
                    <th><strong>Image</strong></th>
                    <th><strong>Description</strong></th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (rs.next()) {
                        int productId = rs.getInt("pid");
                %>
                <tr>
                    <td><%= i + 1 %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td><%= rs.getString(6) %></td>
                    <td><%= rs.getString(7) %></td>
                </tr>
                <%
                        i++;
                    }
                %>
            </tbody>
        </table>
    </div>

    <button type="button" class="btn" onClick="myFunction()">Print Report</button>

    <script type="text/javascript">
        function myFunction() {
            var divToPrint = document.getElementById('rpt');
            var popupWin = window.open('', '_blank');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()"><center><br><div style="color: #FFFFFF;font-family:Apple Chancery, cursive;text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px, #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px, #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;font-style:italic;color: #FFFFFF;"><h1 align="center"><u>Product Report</u></h1></div><h3><u>Product Report</u></h3>' + divToPrint.innerHTML + '</center></body></html>');
            popupWin.document.close();
        }
    </script>
</body>

</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
