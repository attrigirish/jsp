<%@page import="model.Profile"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dl.ProfileDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        ProfileDAO dao = new ProfileDAO();
        ArrayList<Profile> profiles = dao.getProfiles();
    %>
    <body>
        <a href="addProfile.jsp">Add Profile</a>
        <table border="1" width="400px">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Gender</td>
                <td>City</td>
                <td>Age</td>
                <td>Command</td>
            </tr>
            <% for(Profile profile:profiles) { %>
            <tr>
                <td><%= profile.getId() %></td>
                <td><%= profile.getName() %></td>
                <td><%= profile.getGender() %></td>
                <td><%= profile.getCity() %></td>
                <td><%= profile.getAge() %></td>
                <td><a href="deleteProfile.jsp?id=<%= profile.getId() %>">Delete</a> | <a href="updateProfile.jsp?id=<%= profile.getId() %>">Update</a></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
