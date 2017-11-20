<%--
  Created by IntelliJ IDEA.
  User: soufiane
  Date: 16-11-17
  Time: 00:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Palais des Sports</title>
  <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
  <style>

  </style>
</head>
<body><br><br><br><br>
<center><h1>Page de connexion</h1></center>
<br>
<form action="Controller" method="POST" >
  <table align="center">
    <tr>
      <th align="right" >Utilisateur:</th>
      <td><input type="text" name="txtusername" placeholder="user"></td>
    </tr>

    <tr>
      <th align="right" >Password:</th>
      <td><input type="password" name="txtpassword" placeholder="password"></td>
    </tr>

    <tr>
      <td colspan="2" align="right"><input type="submit" value="Connexion" class="btn btn-primary" ></td>
  </table>
</form>

<img src="images/logo1.jpg" alt="myImage" width="300" height="300">
</body>
</html>