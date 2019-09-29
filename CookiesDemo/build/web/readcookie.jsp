<%-- 
    Document   : readcookie
    Created on : 29 Sep, 2019, 3:50:55 PM
    Author     : girish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String city=null;
            Cookie[] cookies=request.getCookies();
            for(Cookie cookie : cookies)
            {
                if(cookie.getName().equals("city")){
                    city=cookie.getValue();
                }
            }
         %>
         
         <h1>City : <%= city%>
    </body>
</html>
