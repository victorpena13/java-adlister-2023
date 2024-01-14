<%--
  Created by IntelliJ IDEA.
  User: victorpena
  Date: 1/14/24
  Time: 12:51 AM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="author" class="com.adlister.adlistertest.model.Author" />
<jsp:setProperty name="author"  property="first_name" value="Mukesh" />
<jsp:setProperty name="author" property="last_name" value="Java" />
test
<jsp:getProperty name="author" property="first_name" /><br>
<jsp:getProperty name="author" property="last_name" />
</body>
</html>
