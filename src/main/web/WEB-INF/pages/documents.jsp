<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 23.05.2019
  Time: 22:58
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
<h1>Добавить пользователя</h1>
<table class="table-hover">
    <tbody>
    <tr class="table-success">
        <th>Номер пользователя</th>
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
        <th>Удалить пользователя</th>
    </tr>
    <tr class="table-light">
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
    </tbody>
</table>

<h1>Добавить новое заявление</h1>
<form action="/users/add/documents/new" method="post">
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">номер заявления</label>
            <input type="text" name="claimId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Имя</label>
            <input type="text" name="firstName" value="${user.firstName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Фамилия</label>
            <input type="text" name="lastName" value="${user.lastName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input type="text" name="patronymic" value="${user.patronymic}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата заполнения</label>
            <input type="date" name="signStartDate">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания</label>
            <input type="date" name="signEndDate">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Идентификационный номер</label>
            <input type="text" name="signIdentNumber">
        </div>
    </fieldset>
</form>


<h1>Добавить новый контракт</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Номер контракта</label>
            <input type="text" name="contractId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Название организации</label>
            <input type="text" name="workName">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Адрес организации</label>
            <input type="text" name="workAddress" >
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата начала работы</label>
            <input type="date" name="workStartDate" >
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания контракта</label>
            <input type="date" name="workEndDate">
        </div>
    </fieldset>
</form>



    <h1>Добавить новую доверенность</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Номер доверенности</label>
            <input type="text" name="proxyId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Имя</label>
            <input type="text" name="firstName">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Фамилия</label>
            <input type="text" name="lastName">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input type="text" name="patronymic">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата заполнения</label>
            <input type="date" name="startDate">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания</label>
            <input type="date" name="endDate">
        </div>
    </fieldset>
</form>



    <h1>Добавление нового свидетельства государственной регистрации</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Номер свидетельства государственной регистрации</label>
            <input type="text" name="certificateId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">УНП</label>
            <input type="text" name="unicStateNumber">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Адрес организации</label>
            <input type="text" name="organizationAddress">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Название организации</label>
            <input type="text" name="organizationName">
        </div>
        <button class="btn btn-primary" type="submit" value="add">Добавить документы</button>
    </fieldset>

</form>

</body>
</html>
