package dl;

import java.sql.Connection;
import java.sql.DriverManager;


public class Base 
{
    public static Connection getConnection()
    {
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","");
        }
        catch(Exception e){           
            System.out.println("Connection Cannot be created" + e.getMessage());
        }
        return con;
    }    
}
