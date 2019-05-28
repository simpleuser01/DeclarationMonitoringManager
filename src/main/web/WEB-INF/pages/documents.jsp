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

<table class="table-hover">
    <tbody>
    <tr class="table-success">
        <th>id</th>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Отчетство</th>
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

<h1>Добавление нового заявления</h1>
<form action="/users/add/documents/new" method="post">
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">id</label>
            <input type="text" name="claimId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Имя</label>
            <input type="text" name="firstName" value="${user.firstName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Фамилия</label>
            <input type="text" name="firstName" value="${user.firstName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input type="text" name="patronymic" value="${user.patronymic}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input type="text" name="patronymic" value="${user.patronymic}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата подписания</label>
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


<h1>Добавление нового контракта</h1>

    <form>
        <fieldset>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">id</label>
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
                <label class="col-form-label col-form-label-lg">Дата начала контракта</label>
                <input type="date" name="workStartDate">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Дата окончания контакта</label>
                <input type="date" name="workStartDate">
            </div>
        </fieldset>
    </form>



    <h1>Добавление новой доверенности</h1>

    <form>
        <fieldset>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">id</label>
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
                <label class="col-form-label col-form-label-lg">Дата подписания</label>
                <input type="date" name="startDate">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Дата завершения</label>
                <input type="date" name="endDate">
            </div>
        </fieldset>
    </form>



    <h1>Добавление нового свидетельства государственной регистрации</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">id</label>
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
    </fieldset>

    <button class="btn btn-primary" type="submit" value="add">Добавить документы</button>
</form>

</body>
</html>
