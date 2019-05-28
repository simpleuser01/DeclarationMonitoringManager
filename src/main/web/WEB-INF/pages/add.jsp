<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 23.05.2019
  Time: 22:57
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
    <form action="/users/add" method="post">
        <fieldset>
            <legend>Добавление нового пользователя</legend>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Имя</label>
                <input class="form-control" type="text" name="firstName" placeholder="Анна">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Фамилия</label>
                <input class="form-control" type="text" name="lastName" placeholder="Волк">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Отчество</label>
                <input class="form-control" type="text" name="patronymic" placeholder="Дмитриевна">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Серия паспорта</label>
                <input class="form-control" type="text" name="series" placeholder="MP">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Номер паспорта</label>
                <input class="form-control" type="text" name="seriesNumber" placeholder="3456789" >
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg"> Идентификационный номер</label>
                <input class="form-control" type="text" name="identNumber" placeholder="4031293A786PB4" >
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Дата рождения</label>
                <input class="form-control" type="date" name="birthDate" placeholder="04.11.1996">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Кем выдан паспорт</label>
                <input class="form-control" type="text" name="stateAgency" placeholder="Центральное РУВД г.Минска">
            </div>
            <div class="form-group">
                <label class="col-form-label col-form-label-lg">Дата выдачи паспорта</label>
                <input class="form-control" type="date" name="dateStateAgency" placeholder="11.05.2015">
            </div>
            <button class="btn btn-primary" type="submit" value="add">Добавить пользователя</button>
        </fieldset>
    </form>
</div>
</body>
</html>
