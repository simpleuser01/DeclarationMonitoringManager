<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 24.05.2019
  Time: 21:54
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
<h1>Пользователи</h1>
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
    </tr>
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
    </tr>
    </tbody>
</table>

<h1>Заявления</h1>

<table class="table-hover">
<tbody>
<tr class="table-success">
    <%--<th>Номер заявления</th>--%>
    <th>Имя</th>
    <th>Фамилия</th>
    <th>Отчество</th>
    <th>Дата заполнения</th>
    <th>Дата окончания</th>
    <th>Идентификационный номер</th>
</tr>
<tr class="table-light">
    <td hidden>${user.userId}</td>
    <td>${user.firstName}</td>
    <td>${user.lastName}</td>
    <td>${user.patronymic}</td>
    <td>${user.claim.signStartDate}</td>
    <td>${user.claim.signEndDate}</td>
    <td>${user.claim.signIdentNumber}</td>
</tr>
</tbody>
</table>

<h1>Контракты</h1>

<table class="table-hover">
    <tbody>
    <tr class="table-success">
       <%-- <th>Номер контракта</th>--%>
        <th>Название организации</th>
        <th>Адрес организации</th>
        <th>Дата начала контракта</th>
        <th>Дата окончания контракта</th>
    </tr>
    <tr class="table-light">
        <td hidden>${user.userId}</td>
        <td>${user.contract.workName}</td>
        <td>${user.contract.workAddress}</td>
        <td>${user.contract.workStartDate}</td>
        <td>${user.contract.workEndDate}</td>
    </tr>
    </tbody>
</table>

<h1>Доверенности</h1>

<table class="table-hover">
    <tbody>
    <tr class="table-success">
        <%--<th>Номер доверенности</th>--%>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Отчество</th>
        <th>Дата подписания</th>
        <th>Дата окончания</th>
    </tr>
    <tr class="table-light">
        <td hidden>${user.userId}</td>
        <td>${user.proxy.proxyFirstName}</td>
        <td>${user.proxy.proxyLastName}</td>
        <td>${user.proxy.proxyPatronymic}</td>
        <td>${user.proxy.startDate}</td>
        <td>${user.proxy.endDate}</td>
    </tr>
    </tbody>
</table>

<h1>Свидетельство государственной регистрации</h1>

<table class="table-hover">
    <tbody>
    <tr class="table-success">
      <%--  <th>Номер свидетельства государственной регистрации</th>--%>
        <th>УНП</th>
        <th>Адрес организации</th>
        <th>Название организации</th>
    </tr>
    <tr class="table-light">
        <td hidden>${user.userId}</td>
        <td>${user.stateCertificate.unicStateNumber}</td>
        <td>${user.stateCertificate.organizationAddress}</td>
        <td>${user.stateCertificate.organizationName}</td>
    </tr>
    </tbody>
</table>
    <a class="btn btn-primary" href="/users/info">Назад</a>
</div>
</body>
</html>
