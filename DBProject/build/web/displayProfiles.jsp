<%@page import="java.util.ArrayList"%>
<%@page import="model.Profile"%>
<%@page import="dl.ProfileDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .profile{
                width:200px;
                height:240px;
                border:1px solid black;
                margin:10px;
                padding:10px;
                float:left;
            }
        </style>
    </head>
    <body>
        
        <% 
            ProfileDAO dao = new ProfileDAO();
            ArrayList<Profile> profiles = dao.getProfiles();
        %>
        
        <h1>All Profiles</h1>
        
        <% for(Profile profile:profiles){ %>
        <div class="profile"> 
            Id : <%= profile.getId() %> <br>
            Name : <%= profile.getName() %> <br>
            Gender : <%= profile.getGender() %> <br>
            City : <%= profile.getCity() %> <br>
            Age : <%= profile.getAge() %>
        </div>
        <% } %>

    </body>
</html>
