<%@page import="dl.ProfileDAO"%>
<%@page import="model.Profile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        if(request.getMethod().equals("POST"))
        {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String city = request.getParameter("city");
            int age = Integer.parseInt(request.getParameter("age"));
            
            Profile profile = new Profile(id,name,gender,city,age);
            ProfileDAO dao = new ProfileDAO();
            int result=dao.addProfile(profile);
            
            if(result>0){
                response.sendRedirect("displayprofilestable.jsp");
            }
            else{
                out.println("Record Addition Failed");
            }
        }
    %>
    
    <body>
        <h1>Add Profile</h1>
        <form method="post">
            Id : <input type="number" name="id"> <br>
            Name : <input type="text" name="name"> <br>
            Gender : <input type="radio" name="gender" value="Male"> Male <input type="radio" name="gender" value="Female"> Female <br>
            City : <select name="city"><option>New Delhi</option><option>Kolkata</option></select> <br>
            Age : <input type="number" name="age"> <br>
            <input type="submit" value="Add Profile">
        </form>       
    </body>
</html>
