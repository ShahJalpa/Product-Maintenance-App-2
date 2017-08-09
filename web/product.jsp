<%-- 
    Document   : product
    Created on : Sep 14, 2015, 1:11:58 PM
    Author     : jalpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "music.business.Product, music.data.ProductIO, java.util.*" %>
<!DOCTYPE html>
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
        <h1>Product</h1>
         <%
            String code = request.getParameter("productCode");
            Product product = ProductIO.selectProduct(code);
            String message = " ";
            if (product == null)
            {
                message = "Enter code, description, and price to add a new product.";
                product = new Product();
            }
            
            else
            {
                message = "Make the necessary changes to update this product.";
            }
        %>
        
          <form action="products.jsp" method="get">
            <label class="pad_top">Product Code: </label>
            <input type="text" name="productCode" value="<%=product.getCode()%>"><br>
            <label class="pad_top">Product Description: </label>
            <input type="text" name="productDescription" value="<%=product.getDescription()%>"><br>
            <label class="pad_top">Product Price: </label>
            <input type="text" name="productPrice" value="<%=product.getPriceNumberFormat()%>"><br>
            <input type="submit" value="Update Product">
            <input type="submit" name="action" value="View Product">
        </form>
        
       
        
    </body>
</html>

