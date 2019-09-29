<%-- 
    Document   : logout
    Created on : 29 Sep, 2019, 5:09:17 PM
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
                if(cookie.getName().equals("username")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    response.sendRedirect("home.jsp");
                }
            }
         %>
    </body>
</html>
