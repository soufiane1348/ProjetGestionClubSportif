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
<%@page import="com.java.bd.ClubBD,com.java.classe.Club"%>

<%
    String pk_club=request.getParameter("pk_club");
    Club u= ClubBD.getRecordById(Integer.parseInt(pk_club));
%>

<h1>Editer Formulaire</h1>
<form action="edit_club.jsp" method="post">
    <input type="hidden" name="pk_club" value="<%=u.getPk_club() %>"/>
    <table>
        <tr><td>Nom:</td><td><input type="text" name="club_nom" value="<%= u.getClub_nom()%>"/></td></tr>
        <tr><td>Type:</td><td>
            <select name="club_type">
                <option>Volley-Ball</option>
                <option>Hand-Ball</option>
                <option>Rugby</option>
                <option>Basket-Ball</option>
                <option>Autres</option>
            </select>
        </td></tr>
        <tr><td colspan="2"><input type="submit" value="Editer"/></td></tr>
    </table>
</form>

</body>
</html>