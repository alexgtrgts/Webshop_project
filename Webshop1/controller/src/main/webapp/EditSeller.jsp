<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Please edit seller's data</title>
</head>
<body>
<form action="updateSeller" method="get">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${seller.name}"><br>
    <input type="hidden" id="id" name="id" value="${seller.id}"><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="${seller.address}"><br>
    <label for="tel">Tel:</label>
    <input type="text" id="tel" name="tel" value="${seller.tel}"><br>
    <input type="submit"><br>
    <button type="reset">Clear</button>
</form>
</body>
</html>
