<%-- 
    Document   : newjsp
    Created on : Apr 29, 2024, 10:17:32 PM
    Author     : Thilina
--%>

<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
</head>
<body>
    <h2>Order Details</h2>
   
    
    <!-- Display data from the second database -->
    <h3>Data from Second Database</h3>
    <%
        ResultSet rs2 = (ResultSet) request.getAttribute("resultSet2");
        try {
            while (rs2.next()) {
                int orderId = rs2.getInt("order_id");
                String date = rs2.getString("date");
                String customerName = rs2.getString("uname");
    %>
    Order ID: <%= orderId %>, Date: <%= date %>, Customer Name: <%= customerName %><br>
    <%
            }
        } finally {
            if (rs2 != null) {
                rs2.close();
            }
        }
    %>
</body>
</html>
