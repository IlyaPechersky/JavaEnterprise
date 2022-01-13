<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Текущая дата: " + new java.util.Date() %>
</h1>
<h2><%
    for (int i = 0; i < 3; i++) {
        out.println("<p style='color: blue'>" + i + "</p>");
    }
    %></h2>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>