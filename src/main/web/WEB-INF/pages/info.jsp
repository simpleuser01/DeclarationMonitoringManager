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
    title>Мониторинг декларантов</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <link rel="stylesheet" href="../../style/bootstrap.css">
</head>
<body>

<h1>Пользователи</h1>
<table>
    <tr>
        <th>id</th>
        <th>first name</th>
        <th>last name</th>
        <th>patronymic</th>
        <th>series</th>
        <th>series number</th>
        <th>ident number</th>
        <th>birth date</th>
        <th>state agency</th>
        <th>state agency date</th>
        <th>info</th>
        <th>delete user</th>
    </tr>

        <tr>
            <td>${user.userId}</td>
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
</table>

<h1>Заявления</h1>

<table>

    <tr>
        <th>id</th>
        <th>first name</th>
        <th>last name</th>
        <th>patronymic</th>
        <th>sign start date</th>
        <th>sign end date</th>
        <th>sign ident number</th>

    </tr>

    <tr>
        <td>${user.userId}</td>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.patronymic}</td>
        <td>${user.claim.signStartDate}</td>
        <td>${user.claim.signEndDate}</td>
        <td>${user.claim.signIdentNumber}</td>


    </tr>
</table>
<h1>Контракты</h1>

<table class="table-hover">
    <tbody>
    <tr class="table-success">
        <th>id</th>
        <th>Название организации</th>
        <th>Адрес организации</th>
        <th>Дата начала контракта</th>
        <th>Дата окончания контракта</th>
    </tr>
    <tr class="table-light">
        <td>${user.userId}</td>
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
        <th>id</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Отчество</th>
        <th>Дата подписания</th>
        <th>Дата окончания</th>
    </tr>
    <tr class="table-light">
        <td>${user.userId}</td>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.patronymic}</td>
        <td>${user.proxy.startDate}</td>
        <td>${user.proxy.endDate}</td>
    </tr>
    </tbody>
</table>

<h1>Свидетельство государственной регистрации</h1>

<table class="table-hover">
    <tbody>
    <tr class="table-success">
        <th>id</th>
        <th>УНП</th>
        <th>Адрес организации</th>
        <th>Название организации</th>
    </tr>
    <tr class="table-light">
        <td>${user.userId}</td>
        <td>${user.stateCertificate.unicStateNumber}</td>
        <td>${user.stateCertificate.organizationAddress}</td>
        <td>${user.stateCertificate.organizationName}</td>
    </tr>
    </tbody>
</table>

<a class="btn btn-primary" href="/users/info">Назад</a>
</body>
</html>
