<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 17-11-17
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.java.bd.MembreBD"%>
<jsp:useBean id="u" class="com.java.classe.Membre"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i= MembreBD.update(u);
    response.sendRedirect("vue_membre.jsp");
%>