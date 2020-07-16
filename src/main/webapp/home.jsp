
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String firstname = "Mark"; %>
<%! String lastname = "Alonge"; %>

<%--<%--%>
<%--    if(myNUmber == 1){--%>
<%--        --%>
<%--    }else--%>
<%--%>--%>
<html>

<head>
    <title><%= "Home Page" %></title>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<h1> Hello,  <%= firstname + " "  + lastname %></h1>
<%@include file="partials/footer.jsp"%>
<%@include file="partials/aboutme.jsp"%>



<% response.sendRedirect("/index.jsp"); %>

</body>
</html>