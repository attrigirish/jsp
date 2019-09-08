<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% String name=request.getParameter("name"); %>
    </head>
    <body>
        <% if(name!=null) { %>
        <h1>Welcome <%= name%></h1>
        <% } else { %>
        <h3>Form</h1>
        <form method="post">
            Name : <input type="text" name="name"> 
            <input type="submit">
        </form>
        <% } %>
    </body>
</html>
