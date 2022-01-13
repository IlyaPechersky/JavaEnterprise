<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: IlyaPechersky
  Date: 13.01.2022
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%
        int n = 10000;
        List<String> colorList = new ArrayList<>();
        colorList.add("blue");
        colorList.add("green");
        colorList.add("yellow");
        for (int i = 0; i < n; i++) {
            out.println(String.format("<p style='color: %s'>hello</p>", colorList.get(i % 3)));
        }
    %>
</h1>
</body>
</html>
