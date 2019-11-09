<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% 
            session.setAttribute("color", "Red");
            session.setAttribute("city", "New Delhi");
        %>
    </head>
    <body>
        <h1>Saving Data in Session</h1>
    </body>
</html>
