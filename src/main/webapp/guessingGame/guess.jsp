<%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 12/19/23
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />
<h1>Guessing Game</h1>

<form method="POST" action="/guessing-game">
<label for="guess">enter a number between one and three: </label>
<input type="guess" id="guess" name="guess">
<input type="submit">
</form>
</body>
</html>
