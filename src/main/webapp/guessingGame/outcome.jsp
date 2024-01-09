<%@ page import="static com.adlister.adlistertest.controller.GuessingGameServlet.userGuess" %>
<%@ page import="static com.adlister.adlistertest.controller.GuessingGameServlet.*" %><%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 12/19/23
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>outcome</title>
</head>
<body>
<h1>outcome</h1>
<%= outcome%>
your guess: <%= userGuess%>
random number; <%= randomNumber%>



<jsp:include page="/partials/navbar.jsp" />
</body>
</html>