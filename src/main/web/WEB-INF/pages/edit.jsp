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
    <title>Title</title>
</head>
<body>
<h1>ADD NEW CLAIM</h1>
<form action="" method="post">

    <p>first name<input type="text" name="firstName" value="${user.firstName}"></p>
    <p>last name <input type="text" name="lastName" value="${user.lastName}"></p>
    <p>patronymic<input type="text" name="patronymic" value="${user.patronymic}"></p>
    <p>series<input type="text" name="series" value="${user.series}"></p>
    <p>series_number<input type="text" name="seriesNumber" value="${user.seriesNumber}"></p>
    <p>ident_number<input type="text" name="identNumber" value="${user.identNumber}"></p>
    <p>birth date<input type="date" name="birthDate" value="${user.birthDate}"></p>
    <p>state_agency<input type="text" name="stateAgency" value="${user.stateAgency}"></p>
    <p>state agency date<input type="date" name="dateStateAgency" value="${user.dateStateAgency}"></p>

    <h1>ADD NEW CLAIM</h1>

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
        <input type="date" name="signStartDate" value="${user.claim.signStartDate}">
    </p>
    <p>
        sign end date
        <input type="date" name="signEndDate" value="${user.claim.signEndDate}">
    </p>
    <p>
        ident number
        <input type="text" name="signIdentNumber" value="${user.claim.signIdentNumber}">
    </p>


    <h1>ADD NEW CONTRACT</h1>

    <p>
        id
        <input type="text" name="contractId" value="${user.userId}">
    </p>
    <p>
        work name
        <input type="text" name="workName" value="${user.contract.workName}">
    </p>
    <p>
        work address
        <input type="text" name="workAddress" value="${user.contract.workAddress}">
    </p>
    <p>
        work start date
        <input type="date" name="workStartDate" value="${user.contract.workStartDate}">
    </p>
    <p>
        sign start
        <input type="date" name="workEndDate" value="${user.contract.workEndDate}">
    </p>



    <h1>ADD NEW PROXY</h1>

    <p>
        id
        <input type="text" name="proxyId" value="${user.userId}">
    </p>
    <p>
        first name
        <input type="text" name="firstName" value="${user.proxy.firstName}">
    </p>
    <p>
        last name
        <input type="text" name="lastName" value="${user.proxy.lastName}">
    </p>
    <p>
        patronymic
        <input type="text" name="patronymic" value="${user.proxy.patronymic}">
    </p>
    <p>
        start date
        <input type="date" name="startDate" value="${user.proxy.startDate}">
    </p>
    <p>
        end date
        <input type="date" name="endDate" value="${user.proxy.endDate}">
    </p>


    <h1>ADD NEW STATE CERTIFICATE</h1>

    <p>
        id
        <input type="text" name="certificateId" value="${user.userId}">
    </p>
    <p>
        unic state number
        <input type="text" name="unicStateNumber" value="${user.stateCertificate.unicStateNumber}">
    </p>
    <p>
        organization address
        <input type="text" name="organizationAddress" value="${user.stateCertificate.organizationAddress}">
    </p>
    <p>
        organization name
        <input type="text" name="organizationName" value="${user.stateCertificate.organizationName}">
    </p>


    <input type="submit" value="add">
</form>
</body>
</html>
