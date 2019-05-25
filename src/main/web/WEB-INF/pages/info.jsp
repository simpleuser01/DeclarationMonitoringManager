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


<a href="">add claim</a>
</body>
</html>
