<%-- 
    Document   : updateProfile
    Created on : 21 Sep, 2019, 4:42:00 PM
    Author     : girish
--%>

<%@page import="model.Profile"%>
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
            ProfileDAO dao = new ProfileDAO();
           
            if(request.getMethod().equals("POST"))
            {
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String gender = request.getParameter("gender");
                String city = request.getParameter("city");
                int age = Integer.parseInt(request.getParameter("age"));      
                
                Profile profile = new Profile(id,name,gender,city,age);
                int result=dao.updateProfile(profile);
                if(result>0)
                {
                    response.sendRedirect("displayprofilestable.jsp");
                }
            }
            
            int id=Integer.parseInt(request.getParameter("id"));
            Profile profile = dao.getProfile(id);
            
        %>
        <h1>Update Profile</h1>
        <form method="post">
            <input type="hidden" name="id" value="<%= profile.getId() %>"> <br>
            Name : <input type="text" name="name" value="<%= profile.getName() %>"> <br>
            Gender : <input type="radio" name="gender" value="Male" <% out.println(profile.getGender().equals("Male")?"checked":""); %>> Male <input type="radio" name="gender" value="Female" <% out.println(profile.getGender().equals("Female")?"checked":""); %>> Female <br>
            City : <select name="city"><option <% out.println(profile.getCity().equals("New Delhi")?"selected":""); %>>New Delhi</option><option <% out.println(profile.getCity().equals("Kolkata")?"selected":""); %>>Kolkata</option></select> <br>
            Age : <input type="number" name="age" value="<%= profile.getAge() %>"> <br>
            <input type="submit" value="Add Profile">
        </form>       
    </body>
</html>
