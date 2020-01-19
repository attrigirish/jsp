package dao;

import java.util.List;
import javax.transaction.Transactional;
import models.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class StudentDAO 
{
    @Autowired
    SessionFactory sessionFactory;
    
    public void addStudent(Student student) {
            Session session = this.sessionFactory.getCurrentSession();
            session.beginTransaction();
            session.save(student);
            session.getTransaction().commit();
    }

    public void deleteStudent(int id) {
            Session session = this.sessionFactory.getCurrentSession();
            session.beginTransaction();
            Student s = (Student) session.load(Student.class, new Integer(id));
            if(null != s){
                    session.delete(s);
            }
    }

    public void updateStudent(Student student) {
            Session session = this.sessionFactory.getCurrentSession();
            session.beginTransaction();
            session.update(student);
    }

    public Student getStudent(int id) {
            Session session = this.sessionFactory.getCurrentSession();		
            session.beginTransaction();
            Student s = (Student) session.load(Student.class, new Integer(id));
            return s;
    }

    public List<Student> getStudents() {
            Session session = this.sessionFactory.getCurrentSession();
            session.beginTransaction();
            List<Student> studentsList = session.createQuery("from Student").list();
            return studentsList;        
    }        

}
