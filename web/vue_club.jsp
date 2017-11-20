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
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Palais des Sports</title>
    <link href="css/style.css" type="text/css" rel="stylesheet">


</head>
<body>

<%@page import="com.java.bd.ClubBD,com.java.classe.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" %>

<a href="logout.jsp">Se déconnecter</a><br>
<h1>Liste des clubs</h1>

<%
    List<Club> list= ClubBD.getAllRecords();
    request.setAttribute("list",list);
%>

<table>
        <thead>
        <tr>
    <th>Id</th><th>Nom du Club</th>
        <th>Type de Sport</th><th>Editer</th><th>Supprimer</th>
        </tr>
        </thead>
    <c:forEach items="${list}" var="u">
        <tr><td>${u.getPk_club()}</td><td>${u.getClub_nom()}</td>
            <td>${u.getClub_type()}</td>
            <td><a href="edit_form_club.jsp?pk_club=${u.getPk_club()}">Editer</a></td>
            <td><a href="delete_club.jsp?pk_club=${u.getPk_club()}">Supprimer</a></td></tr>


    </c:forEach>
</table>

<br/><a href="add_club-form.jsp">Ajouter un nouveau club</a>

</body>
</html>
