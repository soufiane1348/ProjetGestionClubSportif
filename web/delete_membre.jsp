<%@page import="com.java.bd.MembreBD"%>
<jsp:useBean id="u" class="com.java.classe.Membre"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    MembreBD.delete(u);
    response.sendRedirect("vue_membre.jsp");
%>
