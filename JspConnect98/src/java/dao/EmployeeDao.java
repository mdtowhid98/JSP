package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DbUtil;

public class EmployeeDao {

    static Employee e = new Employee();
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";

    public static int saveEmployee(Employee e) {

        int status = 0;
        sql = "insert into teacher (name,gender,department)values(?,?,?)";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
           
            ps.setString(2, e.getGender());
            ps.setString(3, e.getDepartment());

            status = ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    public static List<Employee> viewAllEmployee() {

        List<Employee> elist = new ArrayList<>();

        sql = "select * from teacher";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                Employee e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        
                        rs.getString("gender"),
                        rs.getString("department")
                );
                elist.add(e);
            }

            ps.close();
            rs.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return elist;
    }

    public static void deleteEmployee(Employee e) {

        sql = "delete from teacher where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            ps.setInt(1, e.getId());

            ps.executeUpdate();
            ps.close();
            DbUtil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void updateEmployee(Employee e) {

        sql = "update teacher set name=?,gender=?,department=? where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
            
            ps.setString(2, e.getGender());
            ps.setString(3, e.getDepartment());
            ps.setInt(4, e.getId());

            ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Employee getById(int id) {

        Employee e = null;

        sql = "select * from teacher where id=?";
      
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, id);
            
            rs=ps.executeQuery();
            
            while (rs.next()) {  
                
                e=new Employee(
                        rs.getInt("id"), 
                        rs.getString("name"), 
                        
                        rs.getString("gender"),
                        rs.getString("department")
                );
                
            }
            ps.close();
            DbUtil.getCon().close();
            rs.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return e;
    }

}
