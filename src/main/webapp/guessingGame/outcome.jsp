<%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 12/19/23
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! String userGuess; %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%= userGuess %>
<jsp:include page="/partials/navbar.jsp" />
</body>
</html>
