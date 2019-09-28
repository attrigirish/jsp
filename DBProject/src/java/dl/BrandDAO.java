package dl;

import java.sql.Connection;
import java.util.ArrayList;
import model.Brand;

public class BrandDAO 
{
    public int addBrand(Brand brand){
        Connection con = Base.getConnection();
        return 0;
    }
    
    public int deleteBrand(int id){
        Connection con = Base.getConnection();
        return 0;
    }
    
    public int updateBrand(Brand brand){
        Connection con = Base.getConnection();
        return 0;
    }
    
    public ArrayList<Brand> getBrands(){
        Connection con = Base.getConnection();
        return null;
    }
    
    public Brand getBrand(int id){
        Connection con = Base.getConnection();
        return null;
    }
}
