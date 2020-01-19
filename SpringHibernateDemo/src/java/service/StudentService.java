package service;

import dao.StudentDAO;
import java.util.List;
import javax.transaction.Transactional;
import models.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService 
{
    @Autowired
    StudentDAO dao;
    
    public void addStudent(Student student) {
        dao.addStudent(student);
    }

    public void deleteStudent(int id) {
        dao.deleteStudent(id);
    }

    public void updateStudent(Student student) {
        dao.updateStudent(student);
    }

    public Student getStudent(int id) {
        return dao.getStudent(id);
    }

    public List<Student> getStudents() {
        return dao.getStudents();
    }    
    
}
