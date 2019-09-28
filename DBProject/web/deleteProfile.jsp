<%@page import="dl.ProfileDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id=Integer.parseInt(request.getParameter("id"));
            ProfileDAO dao = new ProfileDAO();
            int result = dao.deleteProfile(id);
            if(result>0)
            {
                response.sendRedirect("displayprofilestable.jsp");
            }
        %>
    </body>
</html>
