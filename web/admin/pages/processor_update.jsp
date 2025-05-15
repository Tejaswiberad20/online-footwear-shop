<%-- 
    Document   : Process_Edit_Product
    Created on : 25 May, 2022, 8:35:18 PM
    Author     : karal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String oid=request.getParameter("oid");
String uname=request.getParameter("uname");
String mno=request.getParameter("mno");
String address=request.getParameter("address");
String pname=request.getParameter("pname");
String price=request.getParameter("price");
String qty=request.getParameter("qty");
String totprice=request.getParameter("totprice");

PreparedStatement ps = null;



try
{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            // creating connection toth data base  
            Connection con = DriverManager.getConnection("jdbc:odbc:GroceryDSN", "", "");
           Statement st=con.createStatement();
           String sql="Update product set uname=?,mno=?,address=?,pname=?,price=?,qty=?,totprice=? where oid="+oid;
            ps = con.prepareStatement(sql);
            ps.setString(1,uname);
            ps.setString(2, mno);
            ps.setString(3, pname);
            ps.setString(4, price);
            ps.setString(5, qty);
            ps.setString(6, totprice);
            int i = ps.executeUpdate();
            if(i > 0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Product Edit Successfully');");
                out.println("location='product_manage.jsp';");
                out.println("</script>");
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                             out.println("alert('Product Not Edit');");
                             out.println("location='product_manage.jsp';");
                             out.println("</script>");
            } 
                            
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>