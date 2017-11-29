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
</head>
<body>
<%@page import="com.java.bd.MembreBD,com.java.classe.Membre"%>

<%
    String pk_membre=request.getParameter("pk_membre");
    Membre u= MembreBD.getRecordById(Integer.parseInt(pk_membre));
%>

<h1>Editer Formulaire</h1>
<form action="edit_membre.jsp" method="post">
    <input type="hidden" name="PK_Membre" value="<%=u.getPK_Membre() %>"/>
    <table>
        <tr><td>Nom:</td><td><input type="text" name="membre_Nom" value="<%= u.getMembre_Nom()%>"/></td></tr>
        <tr><td>Prenom:</td><td><input type="text" name="membre_Prenom" value="<%= u.getMembre_Prenom()%>"/></td></tr>
        <tr><td>Date Naissance:</td><td><input type="text" name="membre_DateNaissance" value="<%= u.getMembre_DateNaissance()%>"/></td></tr>
        <tr><td>Fk Club:</td><td><input type="text" name="FK_Club" value="<%= u.getFK_Club()%>"/></td></tr>

        <tr><td colspan="2"><input type="submit" value="Editer"/></td></tr>
    </table>
</form>

</body>
</html>