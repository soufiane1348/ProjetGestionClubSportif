<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 17-11-17
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Palais des Sports</title>
    <link href="css/headerBouton.css" type="text/css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <header>
        <a href="logout.jsp"><i class="material-icons">&#xe897;</i></a>
        <a href="welcome.jsp"><i class="material-icons">&#xE88A;</i></a><br>


    </header>

</head>
<body>
<%@page import="com.java.bd.MembreBD,com.java.classe.Membre"%>

<%
    String pk_membre=request.getParameter("pk_membre");
    Membre u= MembreBD.getRecordById(Integer.parseInt(pk_membre));
%>

<br><br><br>
<h1>Editer Formulaire</h1>
<form action="edit_membre.jsp" method="post">
    <input type="hidden" name="PK_Membre" value="<%=u.getPK_Membre() %>"/>
    <table>
        <tr><td>Nom:</td><td><input type="text" name="membre_Nom" value="<%= u.getMembre_Nom()%>"/></td></tr>
        <tr><td>Prenom:</td><td><input type="text" name="membre_Prenom" value="<%= u.getMembre_Prenom()%>"/></td></tr>
        <tr><td>Date Naissance:</td><td><input type="text" name="membre_DateNaissance" value="<%= u.getMembre_DateNaissance()%>"/></td></tr>
        <tr><td>Club:</td><td><input type="text" name="FK_Club" value="<%= u.getFK_Club()%>"/></td></tr>
        <tr><td colspan="2"><input class="button2" type="submit" value="Editer"/></td></tr>
    </table>
</form>

</body>
</html>