<%@ page import="model.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Hoso
  Date: 02.09.2022
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users Page</title>
</head>
<body>
<%
    List<User> userList = (List<User>) request.getAttribute("users");
%>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>eventId</th>
        <th>action</th>
    </tr>
    <%
        for (User user : userList) {
    %>
    <tr>
        <td><%=user.getId()%>
        </td>
        <td><%=user.getName()%>
        </td>
        <td><%=user.getSurname()%>
        </td>
        <td><%=user.getEmail()%>
        </td>
        <td>
            <%if (user.getEvent() != null) {%>
            <%=user.getEvent().getName()%>
            <%}else {%>
            <span style="color: #fc1d1d">no event</span>
            <%}%>
        </td>

        <td>
            <a href="/users/remove?userId=<%=user.getId()%>">Remove</a> | <a href="/users/edit?userId=<%=user.getId()%>">Edit</a>
        </td>
    </tr>

    <% }
    %>
</table>
</body>
</html>
