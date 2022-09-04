<%@ page import="java.util.List" %>
<%@ page import="model.Event" %>
<%@ page import="model.User" %><%--
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
    User user = (User) request.getAttribute("user");
    List<Event> events = (List<Event>) request.getAttribute("events");
%>
Please update user's data
<form action="/users/edit" , method="post">
    <input type="hidden" name="userId" value="<%=user.getId()%>">
    <input type="text" name="name" value="<%=user.getName()%>"/><br>
    <input type="text" name="surname" value="<%=user.getSurname()%>"/><br>
    <input type="email" name="email" value="<%=user.getEmail()%>"/><br>
    <select name="eventId">
        <%
            for (Event event : events) {
                if (event.equals(user.getEvent())) {
        %>
        <option selected value="<%=event.getId()%>"><%=event.getName()%> <%=event.getPlace()%> (<%=event.getPrice()%>)
        </option>
        <%} else {%>
        <option value="<%=event.getId()%>"><%=event.getName()%> <%=event.getPlace()%> (<%=event.getPrice()%>)</option>
        <%}}%>

    </select>
    <input type="submit" value="Update">
</form>
</body>
</html>
