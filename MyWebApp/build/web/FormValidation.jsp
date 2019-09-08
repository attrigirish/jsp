<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String city=request.getParameter("city");
            String language=request.getParameter("language");
        %>
        
    </head>
    <body>
        <h1>Data Validation</h1>
        
        <h3>Page Request :  <%= request.getMethod() %></h3>
        
        <%
            
            if(request.getMethod().equals("POST"))
            {
                //Text Field
                if(name.equals(""))
                {
                    out.print("Name is required<br>");
                }

                //Radio Field
                if(gender==null)
                {
                    out.print("Gender is required<br>");
                }

                //ComboBox Field
                if(city.equals("Select City"))
                {
                    out.print("City is required<br>");
                }

                //Checkbox
                if(language==null)
                {
                    out.println("Language is required<br>");
                }
            }
        %>
        
        <hr>
        <form method="post">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="M"> Male
                        <input type="radio" name="gender" value="F"> Female
                    </td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <select name="city">
                            <option>Select City</option>
                            <option>Delhi</option>
                            <option>Chennai</option>
                            <option>Kolkata</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Language</td>
                    <td>
                        <input type="checkbox" name="language" value="English"> English
                        <input type="checkbox" name="language" value="Hindi"> Hindi
                        <input type="checkbox" name="language" value="Punjabi"> Punjabi
                        <input type="checkbox" name="language" value="Tamil"> Tamil
                    </td>                    
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Create Account" name="command">
                </tr>
            </table>
        </form>
        
    </body>
</html>
