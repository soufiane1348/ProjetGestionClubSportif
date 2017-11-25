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
    List<Membre> list= MembreBD.getAllRecords();
    request.setAttribute("list",list);
%>
<p>Ajouter une nouvelle entrée <a href="add_membre_form.jsp"><i class="fa">&#xf0fe;</i></a></p>

<table>
    <thead>
    <tr>
        <th>Id</th><th>Nom</th>
        <th>Prenom</th><th>Date</th><th>FK CLUB</th><th>Editer</th><th>Supprimer</th>
    </tr>
    </thead>
    <c:forEach items="${list}" var="u">
        <tr><td>${u.getPK_Membre()}</td><td>${u.getMembre_Nom()}</td>
            <td>${u.getMembre_Prenom()}</td><td>${u.getMembre_DateNaissance()}</td><td>${u.getFK_Club()}</td>


            <td><a href="edit_form_membre.jsp?pk_membre=${u.getPK_Membre()}"><i class="fa fa-edit"></i></a></td>
            <td><a href="delete_membre.jsp?PK_Membre=${u.getPK_Membre()}"><i class="fa fa-trash-o"></i></a></td>


           </tr>

    </c:forEach>
</table>

<p>Ajouter une nouvelle entrée <a href="add_membre_form.jsp"><i class="fa">&#xf0fe;</i></a></p>
</head>
</body>
</html>
