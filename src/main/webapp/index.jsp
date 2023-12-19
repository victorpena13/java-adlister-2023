<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! int count = -2; %>
<% count +=1; %>
<%! String name; %>
<!DOCTYPE html>
<html>
<head>
    <title>adlister</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<c:choose>
    <c:when test="${pageContext.request.getParameter('name')==null}">
        <% name = "World!"; %>
    </c:when>
    <c:otherwise>
        <% name = request.getParameter("name"); %>
    </c:otherwise>
</c:choose>

<h1>Hello <%=name%></h1>
<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= name %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>
<h1>the current count is <%= count %></h1>
<br/>
<a href="/hello">Hello World Servlet</a>


<%-- this is a jsp comment, you will *not* see this in the html --%>
<!-- this is an html comment, you *will* see this in the html -->
</body>
</html>