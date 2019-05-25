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
    <title>Title</title>
</head>
<body>
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
<h1>ADD NEW CLAIM</h1>
<form action="/users/add/documents/new" method="post">
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
        <input type="text" name="signIdentNumber">
    </p>


<h1>ADD NEW CONTRACT</h1>

    <p>
        id
        <input type="text" name="contractId">
    </p>
    <p>
        work name
        <input type="text" name="workName">
    </p>
    <p>
        work address
        <input type="text" name="workAddress" >
    </p>
    <p>
        work start date
        <input type="text" name="workStartDate" >
    </p>
    <p>
        sign start
        <input type="date" name="workEndDate">
    </p>

    <input type="submit" value="add">
</form>

</body>
</html>
