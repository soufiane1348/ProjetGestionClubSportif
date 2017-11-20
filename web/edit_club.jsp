<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 17-11-17
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.java.bd.ClubBD"%>
<jsp:useBean id="u" class="com.java.classe.Club"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i= ClubBD.update(u);
    response.sendRedirect("vue_club.jsp");
%>