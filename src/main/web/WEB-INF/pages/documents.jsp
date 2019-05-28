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
<h1>Добавить пользователя</h1>

<table class="table-hover">
    <tbody>
    <tr class="table-success">
        <%--<th>Номер пользователя</th>--%>
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

<form action="/users/add/documents/new" method="post">
    <fieldset>
        <div class="form-group" hidden>
            <label class="col-form-label col-form-label-lg">номер заявления</label>
            <input class="form-control" type="text" name="claimId" value="${user.userId}">
        </div>
        <h1>Добавить новое заявление</h1>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Имя</label>
            <input class="form-control" type="text" name="claimFirstName" value="${user.firstName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Фамилия</label>
            <input class="form-control" type="text" name="claimLastName" value="${user.lastName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input class="form-control" type="text" name="claimPatronymic" value="${user.patronymic}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата заполнения</label>
            <input class="form-control"  type="date" name="signStartDate">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания</label>
            <input class="form-control" type="date" name="signEndDate">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Идентификационный номер</label>
            <input class="form-control" type="text" name="signIdentNumber">
        </div>

    <h1>Добавить новый контракт</h1>
        <div class="form-group" hidden>
            <label class="col-form-label col-form-label-lg">Номер контракта</label>
            <input class="form-control" type="text" name="contractId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Название организации</label>
            <input class="form-control" type="text" name="workName">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Адрес организации</label>
            <input class="form-control" type="text" name="workAddress" >
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата начала работы</label>
            <input class="form-control" type="date" name="workStartDate" >
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания контракта</label>
            <input class="form-control" type="date" name="workEndDate">
        </div>

    <h1>Добавить новую доверенность</h1>
        <div class="form-group" hidden>
            <label class="col-form-label col-form-label-lg">Номер доверенности</label>
            <input type="text" name="proxyId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Имя</label>
            <input type="text" name="proxyFirstName">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Фамилия</label>
            <input type="text" name="proxyLastName">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input type="text" name="proxyPatronymic">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата заполнения</label>
            <input type="date" name="startDate">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания</label>
            <input type="date" name="endDate">
        </div>

    <h1>Добавление нового свидетельства государственной регистрации</h1>
        <div class="form-group" hidden>
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
        <button class="btn btn-primary" type="submit">Добавить документы</button>
    </fieldset>
</form>
</div>
</body>
</html>
