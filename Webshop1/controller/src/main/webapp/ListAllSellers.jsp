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
        <th>Telephone</th>
        <th></th>
    </tr>
    <c:forEach var="seller" items="${seller}">
        <tr>
            <td>${seller.name}</td>
            <td>${seller.address}</td>
            <td>${seller.tel}</td>
            <td>
                <form action="editSeller">
                    <input type="hidden" name="id" value="${seller.id}">
                    <button type="submit">Edit</button>
                </form>
            </td>
            <td>
                <form action="deleteSeller" method="get">
                    <input type="hidden" name="id" value="${seller.id}">
                    <button type="submit" value="${seller.id}">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>
            <a href="AddSeller.jsp">Add a seller</a>
        </td>
    </tr>
</table>
<br>
<a href="index.jsp">Go to the main page</a>
</body>
</html>