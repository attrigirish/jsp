<%@page import="java.util.ArrayList"%>
<%@page import="exam.QuestionBank"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            #block{
                position:fixed;
                top:240px;
                left:500px;
                background-color:orange;                
            }
            
            a{
                display:block;
                text-decoration: none;
                color:white;
                font-size: 30px;
                padding : 30px;
                box-sizing: border-box;
            }
        </style>
        
    </head>
    <%
        ArrayList<QuestionBank> questionbank = QuestionBank.GenerateQuestionBank();
        session.setAttribute("questionbank", questionbank);
    %>
    <body>
        <div id="block">
            <a href="exam.jsp">Start Exam</a>
        </div>
    </body>
</html>
