<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 23.05.2019
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Мониторинг декларантов</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <link rel="stylesheet" href="../../style/bootstrap.css">
</head>
<body>
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

<div class="row">


    <h1>Список пользователей</h1>

    <table class="table-hover">
        <tbody>
        <tr class="table-success">
           <%-- <th>Номер пользователя</th>--%>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Отчество</th>
            <th>Серия паспорта</th>
            <th>Номер паспорта</th>
            <th>Идентификационный номер</th>
            <th>Дата рождения</th>
            <th>Кем выдан паспорт</th>
            <th>Дата выдачи паспорта</th>
            <th>Информация</th>
            <th>Редактировать</th>
            <th>Удалить пользователя</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr class="table-light">
                <td hidden>${user.userId}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.patronymic}</td>
                <td>${user.series}</td>
                <td>${user.seriesNumber}</td>
                <td>${user.identNumber}</td>
                <td>${user.birthDate}</td>
                <td>${user.stateAgency}</td>
                <td>${user.dateStateAgency}</td>
                <td><a href="/users/info/${user.userId}">Информация</a></td>
                <td><a href="/users/edit/${user.userId}">Редактировать пользователя</a></td>
                <td><a href="/users/delete/${user.userId}">Удалить пользователя</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a class="btn btn-primary" href="/users/add">Добавить нового пользователя</a>
</div>
</body>
</html>
