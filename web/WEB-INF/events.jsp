<%@ page import="java.util.List" %>
<%@ page import="model.Event" %><%--
  Created by IntelliJ IDEA.
  User: Hoso
  Date: 02.09.2022
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Events Page</title>
</head>
<body>
<%
    List<Event> events = (List<Event>) request.getAttribute("events");
%>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>place</th>
        <th>isOnline</th>
        <th>event type</th>
        <th>price</th>
        <th>event date</th>
    </tr>
    <% for (Event event : events) {
    %>
    <tr>
        <th><%=event.getId()%>
        </th>
        <th><%=event.getName()%>
        </th>
        <th><%=event.getPlace()%>
        </th>
        <th><%=event.isOnline()%>
        </th>
        <th><%=event.getEventType().name()%>
        </th>
        <th><%=event.getPrice()%>
        </th>
        <th><%=event.getEventDate()%>
        </th>
    </tr>
    <% }
    %>
</table>


</body>
</html>
