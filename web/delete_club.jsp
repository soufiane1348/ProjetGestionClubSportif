<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 18-11-17
  Time: 00:12
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.java.bd.ClubBD"%>
<jsp:useBean id="u" class="com.java.classe.Club"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    ClubBD.delete(u);
    response.sendRedirect("vue_club.jsp");
%>