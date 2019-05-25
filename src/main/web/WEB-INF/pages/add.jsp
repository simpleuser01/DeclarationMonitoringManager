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
    <title>Title</title>
</head>
<body>
    <form action="/users/add" method="post">
       <%-- <input type="text" name="userId" readonly>--%>
           <p>first name<input type="text" name="firstName"></p>
           <p>last name <input type="text" name="lastName"></p>
           <p>patronymic<input type="text" name="patronymic"></p>
           <p>series<input type="text" name="series"></p>
           <p>series_number<input type="text" name="seriesNumber"></p>
           <p>ident_number<input type="text" name="identNumber"></p>
           <p>birth date<input type="date" name="birthDate"></p>
           <p>state_agency<input type="text" name="stateAgency"></p>
           <p>state agency date<input type="date" name="dateStateAgency"></p>

        <input type="submit" value="add">
    </form>
</body>
</html>
