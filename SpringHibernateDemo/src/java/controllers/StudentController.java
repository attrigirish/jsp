package controllers;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.StudentService;

@Controller
public class StudentController 
{
    @Autowired
    StudentService service;
    
    @RequestMapping(value="/addstudent.htm")
    public ModelAndView addStudentHandler(HttpServletRequest request, HttpServletResponse response)
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addstudent");
        try
        {        
        
        if(request.getMethod().equals("POST"))
        {
            boolean isValid=true;
            Student student = new Student();
            
            if(request.getParameter("name").equals("")){
                mv.addObject("nameerror","Name is Required");
                isValid=false;
            }
            else{
                student.setName(request.getParameter("name"));
            }
            
            if(request.getParameter("course").equals("")){
                mv.addObject("courseerror","Course is Required");
                isValid=false;
            }
            else{
                student.setCourse(request.getParameter("course"));
            }
            
            if(request.getParameter("fees").equals("")){
                mv.addObject("feeserror", "Fees is Required");
                isValid=false;
            }
            else{
                student.setFees(Double.valueOf(request.getParameter("fees")));
            }
            
            if(isValid==true){
                service.addStudent(student);
            }
        }
        
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return mv;
    }

    @RequestMapping(value="/displaystudents.htm")
    public ModelAndView getStudentsHandler(HttpServletRequest request, HttpServletResponse response){
        List<Student> students = service.getStudents();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("displaystudents");
        mv.addObject("students", students);
        return mv;
    }
}
