<%@ page import="java.util.List" %>
<%@ page import="model.Event" %><%--
  Created by IntelliJ IDEA.
  User: Hoso
  Date: 02.09.2022
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User Page</title>
</head>
<body>

<%
    List<Event> events = (List<Event>) request.getAttribute("events");
%>

<form action="/users/add" , method="post">
    <input type="text" name="name" placeholder="Please input name"/><br>
    <input type="text" name="surname" placeholder="Please input surname"/><br>
    <input type="email" name="email" placeholder="Please input email"/><br>
    <select name="eventId">
        <%
            for (Event event : events) {%>
<option value="<%=event.getId()%>" ><%=event.getName()%> <%=event.getPlace()%> (<%=event.getPrice()%>)</option>
        <%}%>

    </select>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>
