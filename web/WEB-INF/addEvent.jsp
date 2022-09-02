<%--
  Created by IntelliJ IDEA.
  User: Hoso
  Date: 02.09.2022
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Event</title>
</head>
<body>
<form action="/events/add" , method="post">
    <input type="text" name="name" placeholder="Please input name"/><br>
    <input type="text" name="place" placeholder="Please input place"/><br>
    Is Online?<br>
    Yes <input type="radio" name="isOnline" value="TRUE"/>
    No <input type="radio" name="isOnline" value="FALSE"/>
    <br>
    Event Type<br>
    <select name="eventType">
        <option value="FILM">FILM</option>
        <option value="SPORT">SPORT</option>
        <option value="GAME">GAME</option>
    </select>
    <br>
    <input type = "number" name = "price" placeholder="Please input price"/>
    <br>
    <input type="date" name="eventDate"><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>
