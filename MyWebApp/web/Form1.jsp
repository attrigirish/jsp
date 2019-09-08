
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Form 1</h1>
        
        Name : <b><%= request.getParameter("name") %></b> <br>
        Email : <b><%= request.getParameter("email") %> </b>
    </body>
</html>
