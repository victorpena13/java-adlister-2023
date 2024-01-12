<%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 12/8/23
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Login</h1>
<form method="POST" action="/login">

    <label for="username">Username</label>
    <input id="username" name="username" type="text">
    <br>

    <label for="password">Password</label>
    <input id="password" name="password" type="password">
    <br>
    <input type="submit">
</form>

<c:choose>
    <c:when test="${pageContext.request.getParameter('username').equals('admin') && pageContext.request.getParameter('password').equals('password')}">
        ${pageContext.response.sendRedirect("/profile.jsp")}
    </c:when>
</c:choose>

</body>
</html>
