<%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 12/11/23
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pizza-order form</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<%! String name; %>


<div className="container">
    <form method="POST" action="/pizzaOrder">
        <label for="crust">Choose a crust:</label>
        <select name="crust" id="crust">
            <option value="thin&crispy">thin & crispy</option>
            <option value="stuffed_crust">stuffed crust</option>
            <option value="hand_toss">hand toss</option>
        </select>
        <input type="submit" value="submit">
    </form>
</div>


</body>
</html>
