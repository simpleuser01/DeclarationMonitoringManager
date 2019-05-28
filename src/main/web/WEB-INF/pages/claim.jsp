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
    <title>Title</title>
</head>
<body>
    <form action="/users/info/claim/" method="post">
        <p>
            id
            <input type="text" name="claimId" value="${user.userId}">
        </p>
        <p>
            first name
            <input type="text" name="firstName" value="${user.firstName}">
        </p>
        <p>
            last name
            <input type="text" name="lastName" value="${user.lastName}">
        </p>
        <p>
            patronymic
            <input type="text" name="patronymic" value="${user.patronymic}">
        </p>
        <p>
            sign start
            <input type="date" name="signStartDate">
        </p>
        <p>
            sign end date
            <input type="date" name="signEndDate">
        </p>
        <p>
            ident number
            <input type="text" name="identNumber">
        </p>

        <input type="submit" value="add">
    </form>
</body>
</html>
