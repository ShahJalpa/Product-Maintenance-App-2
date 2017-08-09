<%-- 
    Document   : confirm_product_delete
    Created on : Sep 14, 2015, 1:12:44 PM
    Author     : jalpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "music.business.Product, music.data.ProductIO, java.util.*" %>
<!DOCTYPE html>

    <% 
            String code = request.getParameter("productCode");
            Product product = ProductIO.selectProduct(code);
    %>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Product Maintenance</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Are you sure you want to delete this product?</h1>
        <label>Product Code:</label>
       
        <span><%=product.getCode()%></span><br>
        <label>Product Description:</label>
        <span><%=product.getDescription()%></span><br>
        <label>Product Price</label>
        <span><%=product.getPrice()%></span><br>
        
     
        
        <form action="products.jsp" method="post">
            <input type="submit" value="Yes">
        </form>
        
        <form action="products.jsp" method="post">
            <input type="submit" name="action" value="No">
        </form>
        
        
        
        
    </body>
</html>

