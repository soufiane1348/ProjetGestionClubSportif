<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Palais des Sports </title>
    <link href="css/tableau.css" type="text/css" rel="stylesheet">
    <link href="css/listeclub.css" type="text/css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




    <header>
        <a href="logout.jsp"><i class="material-icons">&#xe897;</i></a>
        <a href="welcome.jsp"><i class="material-icons">&#xE88A;</i></a><br>
    </header>
<body>


<%@page import="com.java.bd.MembreBD,com.java.classe.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" %>

<br><br><br><br>
<h1>Liste des membres</h1>

<%
    List<Membre> membreList= MembreBD.getAllRecords();
    request.setAttribute("membreList",membreList);
%>
<p>Ajouter une nouvelle entrée <a href="add_membre_form.jsp"><i class="fa">&#xf0fe;</i></a></p>

<table>
    <thead>
    <tr>
        <th>Id</th><th>Nom</th>
        <th>Prenom</th><th>Date</th><th>FK CLUB</th><th>Editer</th><th>Supprimer</th>
    </tr>
    </thead>

    <c:forEach items="${membreList}" var="c">

        <tr><td>${c.getPK_Membre()}</td>
            <td>${c.getMembre_Nom()}</td>
            <td>${c.getMembre_Prenom()}</td>
            <td>${c.getMembre_DateNaissance()}</td>
            <td>${c.getNomClub()}</td>


            <td><a href="edit_form_membre.jsp?pk_membre=${c.getPK_Membre()}"><i class="fa fa-edit"></i></a></td>
            <td><a href="delete_membre.jsp?PK_Membre=${c.getPK_Membre()}"><i class="fa fa-trash-o"></i></a></td>


           </tr>

    </c:forEach>
</table>

<p>Ajouter une nouvelle entrée <a href="add_membre_form.jsp"><i class="fa">&#xf0fe;</i></a></p>
</head>
</body>
</html>