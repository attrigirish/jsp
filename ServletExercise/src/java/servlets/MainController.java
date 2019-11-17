/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        Cookie[] cookies = request.getCookies();
        String username="";
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("name")){
                username=cookie.getValue();
            }
        }
        
        if(username.equals("")){
            response.sendRedirect("login.jsp");
        }
        else{
            String url = request.getRequestURI();
            String [] parts = url.split("/");            
            String urlredirect = parts[parts.length-1];
            switch(urlredirect){
                case "account":
                    response.sendRedirect("account.jsp");
                    break;
                case "about":
                    response.sendRedirect("about.jsp");
                    break;
                default:
                    response.sendRedirect("home.jsp");
            }          
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
