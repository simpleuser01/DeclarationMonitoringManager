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
    <title>Title</title>
</head>
<body>
<h1>USER INFO</h1>
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
<h1>CLAIM INFO</h1>
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
<h1>CONTRACT INFO</h1>

<table>
    <tr>
        <th>id</th>
        <th>work name</th>
        <th>work address</th>
        <th>work start date</th>
        <th>work end date</th>
    </tr>

    <tr>
        <td>${user.userId}</td>
        <td>${user.contract.workName}</td>
        <td>${user.contract.workAddress}</td>
        <td>${user.contract.workStartDate}</td>
        <td>${user.contract.workEndDate}</td>
    </tr>
</table>

<h1>PROXY INFO</h1>

<table>

    <tr>
        <th>id</th>
        <th>first name</th>
        <th>last name</th>
        <th>patronymic</th>
        <th>start date</th>
        <th>end date</th>
    </tr>

    <tr>
        <td>${user.userId}</td>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.patronymic}</td>
        <td>${user.proxy.startDate}</td>
        <td>${user.proxy.endDate}</td>
    </tr>
</table>

<h1>STATE CERTIFICATE INFO</h1>

<table>

    <tr>
        <th>id</th>
        <th>unic state number</th>
        <th>organization address</th>
        <th>organization name</th>
    </tr>

    <tr>
        <td>${user.userId}</td>
        <td>${user.stateCertificate.unicStateNumber}</td>
        <td>${user.stateCertificate.organizationAddress}</td>
        <td>${user.stateCertificate.organizationName}</td>
    </tr>
</table>

<a href="/users/info">back</a>
</body>
</html>
