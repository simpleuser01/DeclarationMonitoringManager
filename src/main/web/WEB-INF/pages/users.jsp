<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: talas
  Date: 23.05.2019
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>ALL USERS LIST</h1>
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
            <th>edit</th>
            <th>delete user</th>
        </tr>

        <c:forEach items="${users}" var="user">
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
                <td><a href="/users/info/${user.userId}">info</a></td>
                <td><a href="/users/edit/${user.userId}">edit</a></td>
            </tr>
        </c:forEach>
    </table>

    <p/>

    <a href="/users/add">add new user</a>
</body>
</html>
