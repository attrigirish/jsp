<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add New Student</h1>
        <form method="post">
            Name : <input type="text" name="name"> ${nameerror} <br>
            Course : <input type="text" name="course"> ${courseerror} <br>
            Fees : <input type="text" name="fees"> ${feeserror} <br>
            <input type="submit" value="Save">
        </form>
    </body>
</html>
