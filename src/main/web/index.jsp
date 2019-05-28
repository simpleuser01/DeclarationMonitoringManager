<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 23.05.2019
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Мониторинг декларантов</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <link rel="stylesheet" href="./style/bootstrap.css">
  </head>
  <body>

<%--  <%@ page language="java" pageEncoding="UTF-8"%>--%>
<%--  <jsp:forward page="/users" />--%>

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="./index.jsp">Мониторинг декларантов</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarColor01">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="./WEB-INF/pages/documents.jsp">Документы</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./WEB-INF/pages/claim.jsp">Заявления</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./WEB-INF/pages/users.jsp">Пользователи</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./WEB-INF/pages/info.jsp">Информация</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="jumbotron">
    <h1 class="display-3">Main page</h1>
  </div>



  </body>
</html>
