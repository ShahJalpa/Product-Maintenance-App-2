<%--
    Document   : products
    Created on : Sep 14, 2015, 1:11:42 PM
    Author     : jalpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "music.business.Product, music.data.ProductIO, java.util.*" %>
<!DOCTYPE html>
<% 
    ServletContext sc = this.getServletContext();
    String path = sc.getRealPath("/WEB-INF/products.txt");
    ProductIO.init(path);
    List <Product> productList = ProductIO.selectProducts();
    String code = "code";
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
        <h1>Products</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>Price</th>
                <th> </th>
                <th> </th>
            </tr>
            
            <%
                for (Product next: productList)
                {
            %>
                <tr>
                    <td><%= next.getCode() %></td>
                    <td><%= next.getDescription() %></td>
                    <td><%= next.getPrice() %></td>
                    <td>
                        <a href="product.jsp?productCode=<%= next.getCode()%>">Edit</a>
                    </td>
                    <td>
                        <a href="confirm_product_delete.jsp?productCode=<%= next.getCode()%>">Delete</a>
                    </td>
                </tr>
            <%
                }
            %>
            
        </table> <br>
        <td>
            <form action="product.jsp" method="post">
            <input type="submit" value="Add Product">
        </form>
        </td>
        
    </body>
</html>
