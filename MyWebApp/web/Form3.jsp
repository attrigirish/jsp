<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <% 
            int num1=Integer.parseInt(request.getParameter("num1")); 
            int num2=Integer.parseInt(request.getParameter("num2"));
        %>
    </head>
    <body>
        <h1>Form 3</h1>
        Add : <%= num1+num2 %> <br>
        Subtract : <%= num1-num2 %> <br>
        Divide : <%= num1/num2 %> <br>
    </body>
</html>
