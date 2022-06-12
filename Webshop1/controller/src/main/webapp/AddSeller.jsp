<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>Please add a seller in the form below</h1>
<br>
<br>

<form action="AddSeller" method="post">
    <label for="name">Name:</label>
    <input type="text" id = "name" name="name"><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address"><br>
    <label for="tel">Tel:</label>
    <input type="text" id= "tel" name="tel"><br>
    <input type="submit"><br>
    <button type="reset">Clear</button>
</form>
<br>
<a href="index.jsp">Go to the main page</a>
</body>
</html>