package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import exam.QuestionBank;
import java.util.ArrayList;

public final class exam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");
 

        
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
    
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <form method=\"post\">\n");
      out.write("        <h1>Q. ");
      out.print( (index+1) );
      out.write(" : ");
      out.print( question.question );
      out.write("</h1>\n");
      out.write("        <input type=\"radio\" name=\"answer\" value=\"0\"> ");
      out.print( question.answers[0] );
      out.write(" <br>\n");
      out.write("        <input type=\"radio\" name=\"answer\" value=\"1\"> ");
      out.print( question.answers[1] );
      out.write(" <br>\n");
      out.write("        <input type=\"radio\" name=\"answer\" value=\"2\"> ");
      out.print( question.answers[2] );
      out.write(" <br>\n");
      out.write("        <input type=\"radio\" name=\"answer\" value=\"3\"> ");
      out.print( question.answers[3] );
      out.write(" <br>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        ");
 if(index!=0) { 
      out.write("\n");
      out.write("        <input type=\"submit\" name=\"command\" value=\"Previous\">\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        ");
 if(index!=questionbank.size()-1) { 
      out.write(" \n");
      out.write("        <input type=\"submit\" name=\"command\" value=\"Next\">\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        ");
 if(index==questionbank.size()-1) { 
      out.write("\n");
      out.write("        <input type=\"submit\" name=\"command\" value=\"Finish\">\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
