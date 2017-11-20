<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 16-11-17
  Time: 00:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Palais des Sports</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
</body>
</html>

