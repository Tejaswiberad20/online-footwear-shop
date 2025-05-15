<%-- 
    Document   : product_manage
    Created on : 26 May, 2022, 12:10:02 PM
    Author     : HP
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import = "java.lang.String.*"%>
<%
    
    int i=0;
    try
    {  
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
        Connection con = DriverManager.getConnection("jdbc:odbc:footweardsn", "", "");
        Statement st= con.createStatement(); 
        
        String query="select * from pr ";
        out.println(query);
        ResultSet rs=st.executeQuery(query);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MANAGE PRODUCT</title>
        <style type="text/css">
<!--
.style2 {
	font-size: x-large;
	font-weight: bold;
}
.style4 {font-size: medium; font-weight: bold; }
.style5 {
	font-size: xx-large;
	font-weight: bold;
}
.style6 {color: #FF9933}
.style7 {font-weight: bold}
-->
        </style>
    </head>
    <body>
        <table width="1510" border="2" bordercolor="#FFFFFF">
  <tr>
    <td width="550" height="112"><span class="style5"><span class="style6">O</span>nline <span class="style6">G</span>rocery <span class="style6">S</span>tore </span></td>
</tr></table>
<table width="1510" border="2" bordercolor="#FFFFFF">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><p align="center" class="style2">&nbsp;</p>
    <p align="center" class="style2">MANAGE PRODUCT</p>
    <p align="center">    
    <div id="export" align="center">
        <table width="1100" border="2" align="center" bordercolor="#FF9933">
            <tr>
                <th width="45">Sr.No.</th>
                <th width="130" class="style4">Product Category</th>
                <th width="100" class="style4">Image</th>
                <th width="130" class="style4">Product Name</th>
                <th width="165" class="style4">Description</th>
                <th width="100" class="style4">Quantity</th>
                <th width="100" class="style4">Price</th>
                <th width="75">Edit</th>
                <th width="75">Delete</th>
            </tr>
            <%
            while(rs.next())
                               {
             String pid=rs.getString("pid");
              i++; 
          %>
            <tr>
                <td> <%= i %></td>
                <td><div align="center" class="style4"><%=rs.getString("pname")%> </div></td>
                <td><div align="center" class="style4"><%=rs.getString("price")%> </div></td> 
                <td><div align="center" class="style4"><%=rs.getString("category")%> </div></td>
                <td><div align="center" class="style4"><%=rs.getString("disc")%> </div></td>
                <td><div align="center" class="style4"><%=rs.getString("qty")%> </div></td>
                <td><div align="center" class="style4"><%=rs.getString("img")%> </div></td>
                <td><div align="center"><a href="update.jsp?id=<%= pid %>">
                  <input name="EDIT" type="button" value="EDIT">
                </a></div></td>
                <td><div align="center"><a href="product_delete.jsp?id=<%= pid %>"><input name="DELETE" type="button" value="DELETE"></a></div></td>
            </tr>
            <%
            }
%> 
        </table>
    </div>    </p></td>
<form name="form1" method="post" >
     <input type="hidden" name="pid" />
    </form>
  </tr>
</table>
<table width="1510" border="2" bordercolor="#FFFFFF">
<tr>
<td height="40" bgcolor="#99FF33">
  <span class="style7">
  <footer>
  </footer>
  </span>
  <footer><p align="center"><strong>Developed By : Mote Sayali &amp; Sonawane Shravani </strong></p>
</footer>
</td>
</tr>
</table> 
</body>
</html>
<%
 }
    catch (Exception e) 
    {
        e.printStackTrace();
    }
  
%>

