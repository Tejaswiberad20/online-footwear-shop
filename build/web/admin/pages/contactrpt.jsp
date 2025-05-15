<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="java.lang.String.*" %>

<%
    String id = (String) session.getAttribute("id");
    int i = 0;
    String set_value;
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement();
        // Get contact details
        String query = "select * from contact";
        out.println(query);
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
    <style>
        table {
            width: 400px;
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

        .btn-print {
            margin-top: 20px;
        }

        .report-title {
            font-family: 'Apple Chancery', cursive;
            text-shadow: 0 0 5px #FFF, 0 0 10px #FFF, 0 0 15px #FF2D95;
            color: #FFFFFF;
            text-align: center;
            margin-bottom: 20px;
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
                        <li class="nav-item"><a class="nav-link nav-content" href="product.jsp">Product</a></li>
                        <li class="nav-item"><a class="nav-link" href="user.jsp">User</a></li>
                        <li class="nav-item"><a class="nav-link" href="order.jsp">Order</a></li>
                        <li class="nav-item"><a class="nav-link" href="report.jsp">Reports</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <h1 class="head text-center">Contact Us Report</h1>

    <div id="rpt">
        <table class="table">
            <thead>
                <tr>
                    <th><strong>Sr. No.</strong></th>
                    <th><strong>User Name</strong></th>
                    <th><strong>Mobile</strong></th>
                    <th><strong>Message</strong></th>
                </tr>
            </thead>
            <tbody>
                <%
                    int srNo = 1; // Initialize serial number
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= srNo++ %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getInt(3) %></td>
                    <td><%= rs.getString(4) %></td>
                </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
    </div>

    <button type="button" class="btn btn-primary btn-print" onClick="myFunction()">Print Report</button>

    <script type="text/javascript">
        function myFunction() {
            var divToPrint = document.getElementById('rpt');
            var popupWin = window.open('', '_blank');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()"><center><br><div class="report-title"><h1><u>User Report</u></h1></div>' + divToPrint.innerHTML + '</center></body></html>');
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
