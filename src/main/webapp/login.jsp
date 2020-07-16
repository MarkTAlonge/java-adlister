
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) (
            String username = request.getParameter("username")
            )
%>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h1>Login</h1>
<% request.getParameter("enter"); %>
<form action ="login.jsp" method = "POST">
    <div class="container">
<input type ="text"  name= "username">Username
<input type="text"  name="password">Password
<button type="button" name="enter">Enter</button>

    </div>
    <c:choose>

    <c:when test="isAdmin">
        <h3> You are recognized as an admin </h3>

    </c:when>
    <c:otherwise>
        <h1>Welcome to your page </h1>
    </c:otherwise>
    </c:choose>
</form>

</body>
</html>
