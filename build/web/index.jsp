<%-- 
    Document   : index
    Created on : Mar 18, 2017, 1:48:02 PM
    Author     : sonvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>MVC SHOPPING CART DEMO</h1>
        <br>
        Please choose your favorite book: <br>
        <form action="Controller">
            <select size="20" name="data">
                <option>iOS</option>
                <option>Spring MVC</option>
                <option>Structs</option>
                <option>Android</option>
                <option>Java</option>
            </select> <br>
            <input type="submit" value="Add to cart" name="action" />
            <input type="submit" value="View cart" name="action"/>
            <br>
            <p>Test: <%= request.getAttribute("test") %></p>
        </form>
    </body>
</html>
