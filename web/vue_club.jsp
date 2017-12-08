<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 17-11-17
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="refresh" content="5" />


    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Palais des Sports</title>
    <link href="css/tableau.css" type="text/css" rel="stylesheet">
    <link href="css/logo.css" type="text/css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<header>
    <a href="logout.jsp"><i class="material-icons">&#xe897;</i></a>
    <a href="welcome.jsp"><i class="material-icons">&#xE88A;</i></a><br>
    <a href="vue_club.jsp:window.location.reload()"></a>
</header>
<body>


<%@page import="com.java.bd.ClubBD,com.java.classe.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" %>

<br><br><br><br>
<h1>Liste des clubs</h1>

<%
    List<Club> list= ClubBD.getAllRecords();
    request.setAttribute("list",list);
%>
<p>Ajouter une nouvelle entrée <a href="add_club-form.jsp"><i class="fa">&#xf0fe;</i></a></p>

<table>
        <thead>
        <tr>
    <th>Id</th><th>Nom du Club</th>
        <th>Type de Sport</th><th>Editer</th><th>Supprimer</th>
        </tr>
        </thead>
    <c:forEach items="${list}" var="u">
        <tr><td>${u.getPK_Club()}</td><td>${u.getClub_Nom()}</td>
            <td>${u.getClub_Type()}</td>
            <td><a href="edit_form_club.jsp?pk_club=${u.getPK_Club()}"><i class="fa fa-edit"></i></a></td>
            <td><a href="delete_club.jsp?PK_Club=${u.getPK_Club()}"><i class="fa fa-trash-o"></i></a></td></tr>


    </c:forEach>
</table>

<p>Ajouter une nouvelle entrée <a href="add_club-form.jsp"><i class="fa">&#xf0fe;</i></a></p>
</head>
</body>
</html>
