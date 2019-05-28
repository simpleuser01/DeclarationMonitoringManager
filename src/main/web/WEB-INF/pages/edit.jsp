<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 25.05.2019
  Time: 20:14
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

<h1>Редактировать пользователя</h1>
<form action="/users/edit/" method="post">
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">id</label>
            <input type="text" name="userId" value="${user.userId}">
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
            <label class="col-form-label col-form-label-lg">Серия паспорта</label>
            <input type="text" name="series" value="${user.series}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Номер паспорта</label>
            <input type="text" name="seriesNumber" value="${user.seriesNumber}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Идентификационный номер</label>
            <input type="text" name="identNumber" value="${user.identNumber}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата рождения</label>
            <input type="date" name="birthDate" value="${user.birthDate}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Кем выдан паспорт</label>
            <input type="text" name="stateAgency" value="${user.stateAgency}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата выдачи паспорта</label>
            <input type="date" name="dateStateAgency" value="${user.dateStateAgency}">
        </div>
    </fieldset>





    <h1>Редактировать контракт</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">id</label>
            <input type="text" name="contractId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Название организации</label>
            <input type="text" name="workName" value="${user.contract.workName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Адрес организации</label>
            <input type="text" name="workAddress" value="${user.contract.workAddress}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата начала работы</label>
            <input type="date" name="workStartDate" value="${user.contract.workStartDate}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания контракта</label>
            <input type="date" name="workEndDate" value="${user.contract.workEndDate}">
        </div>
    </fieldset>
</form>

    <h1>Редактировать доверенность</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">id</label>
            <input type="text" name="proxyId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Имя</label>
            <input type="text" name="proxyFirstName" value="${user.proxy.proxyFirstName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Фамилия</label>
            <input type="text" name="proxyLastName" value="${user.proxy.proxyLastName}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Отчество</label>
            <input type="text" name="proxyPatronymic" value="${user.proxy.proxyPatronymic}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата заполнения</label>
            <input type="date" name="startDate" value="${user.proxy.startDate}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Дата окончания</label>
            <input type="date" name="endDate" value="${user.proxy.endDate}">
        </div>
    </fieldset>
</form>


    <h1>Редактировать свидетельство государственной регистрации</h1>
<form>
    <fieldset>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">id</label>
            <input type="text" name="certificateId" value="${user.userId}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">УНП</label>
            <input type="text" name="unicStateNumber" value="${user.stateCertificate.unicStateNumber}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Адрес организации</label>
            <input type="text" name="organizationAddress" value="${user.stateCertificate.organizationAddress}">
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Название организации</label>
            <input type="text" name="organizationName" value="${user.stateCertificate.organizationName}">
        </div>
        <input class="btn btn-primary" type="submit" value="edit">
    </fieldset>
</form>

</form>
</body>
</html>
