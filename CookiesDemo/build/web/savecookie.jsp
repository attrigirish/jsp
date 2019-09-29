<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getMethod().equals("POST"))
            {
                //Storing Cookies
                //Syntax : Cookie object = new Cookie(key,value);
                
                Cookie cookie = new Cookie("city",request.getParameter("city"));
                cookie.setMaxAge(60*60*24);
                response.addCookie(cookie);
            }
        %>
        
        <form method="post">
        City : <input type="text" name="city"> 
        <input type="submit" value="Save">
        </form>
    </body>
</html>
