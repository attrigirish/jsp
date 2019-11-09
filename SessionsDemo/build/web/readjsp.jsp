<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reading Session Data</h1>
        Color : <%= session.getAttribute("color") %> <br>
        City : <%= session.getAttribute("city") %> <br>
    </body>
</html>
