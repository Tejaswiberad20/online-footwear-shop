<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.sql.*, java.text.SimpleDateFormat, java.util.Date" %>

<%
    // Get current date and time in 12-hour format with AM/PM
    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss a");
    String currentDateTime = sdf.format(new Date());

    try {  
        // Load the deprecated JDBC-ODBC Bridge driver (Only works in old Java versions)
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        
        // Connect to the Access database using ODBC DSN
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st = con.createStatement(); 
        
        // Fetch the latest order from the database
        ResultSet rs1 = st.executeQuery("SELECT TOP 1 * FROM `order` ORDER BY oid DESC");

        if (rs1.next()) {
            String uname = rs1.getString("uname");
            String mno = rs1.getString("mno");
            String address = rs1.getString("address");
            String pname = rs1.getString("pname");
            String price = rs1.getString("price");
            String qty = rs1.getString("qty");
            String totprice = rs1.getString("totprice");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footwear Shop - Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
        }
        .bill-container {
            width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f6f6ee;
            box-shadow: 0 0 4px 1px #000;
        }
        .bill-details p {
            font-size: 16px;
            font-weight: bold;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #000;
            text-align: center;
        }
        .btn-print {
            display: block;
            width: 150px;
            padding: 10px;
            margin: 20px auto;
            background-color: #000;
            color: #fff;
            border: none;
            border-radius: 20px;
            cursor: pointer;
        }
        .btn-print:hover {
            background-color: #333;
        }
        
        /* Hide print button when printing */
        @media print {
            .btn-print {
                display: none;
            }
        }
    </style>
</head>
<body>    

    <div id="bill-section" class="bill-container">
        <h1>Footwear Shop - Bill</h1>
        <div class="bill-details">
            <p>Date and Time: <%= currentDateTime %></p>
            <p>User Name: <span><%= uname %></span></p>
            <p>Address: <%= address %></p>
            <p>Mobile No: <%= mno %></p>
        </div>
        <hr>
        <table>
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <tr>
                <td><%= pname %></td>
                <td><%= price %></td>
                <td><%= qty %></td>
                <td><%= totprice %></td>
            </tr>
        </table>
    </div>

    <button type="button" class="btn-print" onClick="printBill()">Print Bill</button>

    <script type="text/javascript">
        function printBill() {
            var originalContents = document.body.innerHTML;
            var billContents = document.getElementById('bill-section').innerHTML;

            document.body.innerHTML = billContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>

</body>
</html>

<%
        } else {
            out.println("<h3>No orders found in the database.</h3>");
        }
        rs1.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error occurred: " + e.getMessage() + "</h3>");
    }
%>
