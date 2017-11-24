<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 16-11-17
  Time: 02:34
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Palais des Sports</title>
</head>
<body>


</body>
</html>

<%@ page pageEncoding="UTF-8" %>
<%@page import="com.java.bd.ClubBD"%>
<jsp:useBean id="u" class="com.java.classe.Club"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
    int i= ClubBD.save(u);
    if(i>0){
        response.sendRedirect("add_club-success.jsp");
    }else{
        response.sendRedirect("add_club-erreur.jsp");
    }
%>