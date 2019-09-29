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
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                Cookie cookie = new Cookie("username",username);
                response.addCookie(cookie);
                response.sendRedirect("home.jsp");
            }
         %>
        
        <form method="post">
            <table width="300px" align="center">
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="username">
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="username">
                </tr>
                <tr>
                    <td colspan="2" ><input type="submit" value="Login">
                </tr>                
            </table>
        </form>
    </body>
</html>
