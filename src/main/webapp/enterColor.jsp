<%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 1/8/24
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>enter favorite color</title>

</head>
<body>
<h1>enter your favorite Color</h1>

<form method="POST" action="/display-color">
    <label for="color">Color</label>
    <input id="color" name="color" type="text">
    <br>
    <input type="submit">
</form>

</body>
</html>
