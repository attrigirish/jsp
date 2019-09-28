package dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Profile;

public class ProfileDAO 
{
    public int addProfile(Profile profile){
        Connection con = Base.getConnection();
        int result=0;
        try{
            PreparedStatement stmt = con.prepareStatement("INSERT INTO PROFILE VALUES(?,?,?,?,?)");
            stmt.setInt(1,profile.getId());
            stmt.setString(2,profile.getName());
            stmt.setString(3,profile.getGender());
            stmt.setString(4, profile.getCity());
            stmt.setInt(5,profile.getAge());
            
            
            result=stmt.executeUpdate();
        }
        catch(Exception e){
            
        }
        return result;
    }
    
    public int deleteProfile(int id){
        Connection con = Base.getConnection();
        int result=0;
        
        try{
            PreparedStatement stmt = con.prepareStatement("DELETE FROM PROFILE WHERE ID=?");
            stmt.setInt(1, id);
            
            result=stmt.executeUpdate();
        }
        catch(Exception e){
            
        }
        
        return result;
    }
    
    public int updateProfile(Profile profile){
        Connection con = Base.getConnection();
        int result=0;
        
        try{
            PreparedStatement stmt = con.prepareStatement("UPDATE PROFILE SET NAME=?, "
                    + "GENDER=?, CITY=?, AGE=? WHERE ID=?");
            stmt.setString(1, profile.getName());
            stmt.setString(2, profile.getGender());
            stmt.setString(3, profile.getCity());
            stmt.setInt(4, profile.getAge());
            stmt.setInt(5, profile.getId());
            
            result=stmt.executeUpdate();
        }
        catch(Exception e){
            
        }
        
        return result;
    }
    
    public ArrayList<Profile> getProfiles(){
        Connection con = Base.getConnection();
        ArrayList<Profile> profiles = new ArrayList<Profile>();
        
        try{
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM PROFILE");            
            ResultSet result = stmt.executeQuery();
            
            while(result.next())
            {
                Profile profile = new Profile(
                                                            result.getInt("id"),
                                                            result.getString("name"),
                                                            result.getString("gender"),
                                                            result.getString("city"),
                                                            result.getInt("age")
                                                        );
                profiles.add(profile);
            }            
        }
        catch(Exception e){
            
        }        
        return profiles;
    }
    
    public Profile getProfile(int id){
        Connection con = Base.getConnection();
        Profile profile = null;
        
        try{
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM PROFILE WHERE ID=?");
            stmt.setInt(1, id);
            
            ResultSet result = stmt.executeQuery();
            
            if(result.next())
            {
                profile = new Profile(
                                        result.getInt("id"),
                                        result.getString("name"),
                                        result.getString("gender"),
                                        result.getString("city"),
                                        result.getInt("age")
                                    );                
            }
        }
        catch(Exception e){
            
        }
        return profile;
    }
}
