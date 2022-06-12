<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<br>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Brand</th>
        <th></th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturer}">
        <tr>
            <td>${manufacturer.name}</td>
            <td>${manufacturer.address}</td>
            <td>${manufacturer.brand}</td>
            <td>
                <form action="editManufacturer">
                    <input type="hidden" name="id" value="${manufacturer.id}">
                    <button type="submit">Edit</button>
                </form>
            </td>
            <td>
                <form action="deleteManufacturer" method="get">
                    <input type="hidden" name="id" value="${manufacturer.id}">
                    <button type="submit" value="${manufacturer.id}">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>
            <a href="AddManufacturer.jsp">Add a manufacturer</a>
        </td>
    </tr>
</table>
<br>
<a href="index.jsp">Go to the main page</a>
</body>
</html>