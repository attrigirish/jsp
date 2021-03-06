package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FormValidation_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");

            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String city=request.getParameter("city");
            String language=request.getParameter("language");
            
            String nameerror="";
            String gendererror="";
            String cityerror="";
            String languageerror="";
        
      out.write("\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Data Validation</h1>\n");
      out.write("        \n");
      out.write("        <h3>Page Request :  ");
      out.print( request.getMethod() );
      out.write("</h3>\n");
      out.write("        \n");
      out.write("        ");

            
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
        
      out.write("\n");
      out.write("        \n");
      out.write("        <hr>\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"M\"> Male\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"F\"> Female\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>City</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"city\">\n");
      out.write("                            <option>Select City</option>\n");
      out.write("                            <option>Delhi</option>\n");
      out.write("                            <option>Chennai</option>\n");
      out.write("                            <option>Kolkata</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Language</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"checkbox\" name=\"language\" value=\"English\"> English\n");
      out.write("                        <input type=\"checkbox\" name=\"language\" value=\"Hindi\"> Hindi\n");
      out.write("                        <input type=\"checkbox\" name=\"language\" value=\"Punjabi\"> Punjabi\n");
      out.write("                        <input type=\"checkbox\" name=\"language\" value=\"Tamil\"> Tamil\n");
      out.write("                    </td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"><input type=\"submit\" value=\"Create Account\" name=\"command\">\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        \n");
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
