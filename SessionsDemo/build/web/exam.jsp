
<%@page import="exam.QuestionBank"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% 

        
        int index=0;
        int result=0;
        
        if(session.getAttribute("index")!=null)
        {
            index=Integer.parseInt(session.getAttribute("index").toString());            
        }
        

        ArrayList<QuestionBank> questionbank = (ArrayList<QuestionBank>)session.getAttribute("questionbank");        
        QuestionBank question = questionbank.get(index);             

        
        if(request.getMethod()=="POST")
        {            
            
            
            int useranswer=Integer.parseInt(request.getParameter("answer"));            
            if(question.answers[useranswer]==question.correctAnswer)
            {
                if(session.getAttribute("result")!=null){
                       result=Integer.parseInt(session.getAttribute("result").toString());
                }
                result+=10;
                session.setAttribute("result", result);
            }                      
            
            
            if(request.getParameter("command").equals("Previous")){
                index--;
            }
            else if(request.getParameter("command").equals("Next")){
                index++;
            }
            else{
                response.sendRedirect("result.jsp");
            }                                
        }
       
        
        QuestionBank question = questionbank.get(index);             
        
        session.setAttribute("index", index);
    %>
    
    <body>

        
        <form method="post">
        <h1>Q. <%= (index+1) %> : <%= question.question %></h1>
        <input type="radio" name="answer" value="0"> <%= question.answers[0] %> <br>
        <input type="radio" name="answer" value="1"> <%= question.answers[1] %> <br>
        <input type="radio" name="answer" value="2"> <%= question.answers[2] %> <br>
        <input type="radio" name="answer" value="3"> <%= question.answers[3] %> <br>
        
        <br>
        <br>
        <br>
        
        <% if(index!=0) { %>
        <input type="submit" name="command" value="Previous">
        <% } %>
        <% if(index!=questionbank.size()-1) { %> 
        <input type="submit" name="command" value="Next">
        <% } %>
        <% if(index==questionbank.size()-1) { %>
        <input type="submit" name="command" value="Finish">
        <% } %>
        </form>
    </body>
</html>
