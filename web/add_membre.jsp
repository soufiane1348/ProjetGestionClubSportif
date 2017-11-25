<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 25-11-17
  Time: 09:18
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
<%@page import="com.java.bd.MembreBD"%>
<jsp:useBean id="u" class="com.java.classe.Membre"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
    int i= MembreBD.save(u);
    if(i>0){
        response.sendRedirect("add_membre_success.jsp");
    }else{
        response.sendRedirect("add_membre_erreur.jsp");
    }
%>