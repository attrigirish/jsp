<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <%! boolean isloggedin=false; %>
    </head>
    <body>
        
        <h1>Method 1</h1>
        <% 
            if(isloggedin==false){
                out.print("<a href='#'>Login & Signup</a>");
            }
            else{
                out.print("<a href='#'>Welcome User</a>");
            }
        %>
        
        <h1>Method 2</h1>
        
        <% if(isloggedin==false) { %>
        <a href="#">Login & Signup</a>
        <% } else { %>
        <a href="#">Welcome User</a>
        <% } %>
        
        
        <h1>Looping</h1>
        <select>
            <% for(int i=2019;i>1905;i--) { %>
            <option><%= i%></option>
            <% } %>
        </select>
    </body>
</html>
