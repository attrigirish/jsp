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
            
            String nameerror="";
            String gendererror="";
            String cityerror="";
            String languageerror="";
        %>
        
    </head>
    <body>
        <h1>Data Validation</h1>
                
        <%
            
            if(request.getMethod().equals("POST"))
            {
                //Text Field
                if(name.equals(""))
                {
                    nameerror="Name is required";
                }

                //Radio Field
                if(gender==null)
                {
                    gendererror="Gender is required";
                }

                //ComboBox Field
                if(city.equals("Select City"))
                {
                    cityerror="City is required";
                }

                //Checkbox
                if(language==null)
                {
                    languageerror="Language is required";
                }
            }
        %>
        
        <form method="post">
            <table border="1">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                    <td><%=nameerror%></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="M"> Male
                        <input type="radio" name="gender" value="F"> Female
                    </td>
                    <td><%=gendererror%></td>
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
                    <td><%=cityerror%></td>
                </tr>
                <tr>
                    <td>Language</td>
                    <td>
                        <input type="checkbox" name="language" value="English"> English
                        <input type="checkbox" name="language" value="Hindi"> Hindi
                        <input type="checkbox" name="language" value="Punjabi"> Punjabi
                        <input type="checkbox" name="language" value="Tamil"> Tamil
                    </td>                    
                    <td><%=languageerror%></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="submit" value="Create Account" name="command">
                </tr>
            </table>
        </form>
        
    </body>
</html>
