<%-- 
    Document   : viewcart
    Created on : Mar 18, 2017, 3:48:34 PM
    Author     : sonvu
--%>

<%@page import="com.dto.CartBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart</title>
    </head>
    <body>
        <form action="Controller">
        <h1>VIEW SHOPPING CART</h1>
        <c:set var="shop" value="${sessionScope.SHOP}"/>
        <c:if test="${not empty shop}">
        <table border="1px">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Tittle</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="count" value="0" />
                <c:forEach var="rows" items="${shop}">
                    <c:set var="count" value="${count + 1}" />
                <tr>
                    <td>${count}</td>
                    <td>${rows.value.tittle}</td>
                    <td>${rows.value.quantity}</td>
                    <td><input type="checkbox" name="rmv" value="${rows.value.tittle}"</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        </c:if>
        
        <%--<c:url var="add" value="Controller">--%>
            <%--<c:param name="action" value="Addmore"></c:param>--%>
        <%--</c:url>--%> 
            <input type="submit" value="Add more book" name="action" />
            <input type="submit" value="Delete book" name="action"/>
        </form>       
    </body>
</html>
