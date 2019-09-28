package model;
public class Profile 
{
    int id;
    String name;
    String gender;
    String city;
    int age;

    public Profile() {
    }

    public Profile(int id, String name, String gender, String city, int age) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.city = city;
        this.age = age;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
    
    
}
