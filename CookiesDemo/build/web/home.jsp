<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                padding-left:100px;
                padding-right:100px;
            }
            #leftmenu{
                width:40%;
                float:left;
            }
            #rightmenu{
                width:60%;
                float:right;
                text-align:right;
            }
            
            a{
                display:inline-block;
                padding:20px;
                background-color:orange;
                color:white;
                text-decoration:none;
            }
            
        </style>
    </head>
    <body>
        <% 
            boolean isloggedin=false;
            String username=null;
            Cookie[] cookies = request.getCookies();
            for(Cookie cookie : cookies)
            {
                if(cookie.getName().equals("username"))
                {
                    isloggedin=true;
                    username=cookie.getValue();
                }
            }
        %>
        <div id="leftmenu">
            <a href="home.jsp">Home</a>
            <% if(isloggedin==true) { %>
            <a href="account.jsp">Account</a>
            <% } %>
            <a href="about.jsp">About</a>
        </div>
        <div id="rightmenu">
            <% if(isloggedin==false) { %>
            <a href="login.jsp">Login</a>
            <a href="#">Register</a>
            <% } else { %>
            <a href="#">Welcome <%= username %></a>
            <a href="logout.jsp">Logout</a>
            <% } %>
        <div>
    </body>
</html>
