<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Please edit product data</title>
</head>
<body>
<form action="updateManufacturer" method="get">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${manufacturer.name}"><br>
    <input type="hidden" id="id" name="id" value="${manufacturer.id}"><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="${manufacturer.address}"><br>
    <label for="brand">Brand:</label>
    <input type="text" id="brand" name="brand" value="${manufacturer.brand}"><br>
    <input type="submit"><br>
    <button type="reset">Clear</button>
</form>
</body>
</html>
