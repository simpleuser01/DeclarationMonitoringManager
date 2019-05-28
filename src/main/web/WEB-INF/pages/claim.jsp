<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 24.05.2019
  Time: 13:52
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
<div class="row">
    <form action="/users/info/claim/" method="post">
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
                <input type="text" name="lastName" value="${user.lastName}">
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
                <input type="text" name="identNumber">
            </div>
        </fieldset>
        <button class="btn btn-primary" type="submit" value="add">Добавить заявление</button>
    </form>
</div>
</body>
</html>
