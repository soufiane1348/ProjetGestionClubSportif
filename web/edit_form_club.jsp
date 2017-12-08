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

<body>
<%@page import="com.java.bd.ClubBD,com.java.classe.Club"%>

<%
    String pk_club=request.getParameter("pk_club");
    Club u= ClubBD.getRecordById(Integer.parseInt(pk_club));
%>
<br><br><br>
<h1>Editer Formulaire</h1>
<form action="edit_club.jsp" method="post">
    <input type="hidden" name="PK_Club" value="<%=u.getPK_Club() %>"/>
    <table>
        <tr><td>Nom:</td><td><input type="text" name="club_Nom" value="<%= u.getClub_Nom()%>"/></td></tr>
        <tr><td>Type:</td><td>
            <select name="club_Type">
                <option>Volley-Ball</option>
                <option>Hand-Ball</option>
                <option>Rugby</option>
                <option>Basket-Ball</option>
                <option>Autres</option>
            </select>
        </td></tr>
        <tr><td colspan="2"><input class="button2" type="submit" value="Editer"/></td></tr>
    </table>
</form>

</body>

</head>
</html>