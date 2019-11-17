<%-- 
    Document   : cookiedemo
    Created on : 17 Nov, 2019, 4:44:37 PM
    Author     : girish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        //Saving Cookie
        Cookie cookie = new Cookie("name","Girish");
        cookie.setMaxAge(60*60*24*365);
        response.addCookie(cookie);
    %>
    <body>
        <h1>Cookie Saved</h1>
    </body>
</html>
