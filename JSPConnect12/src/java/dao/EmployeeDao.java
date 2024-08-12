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
        sql = "insert into employee (name,email,cell)values(?,?,?)";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getCell());

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

        sql = "select * from employee";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                Employee e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("cell")
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

        sql = "delete from employee where id=?";

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

        sql = "update employee set name=?,email=?,cell=? where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getCell());
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

        sql = "select * from employee where id=?";
      
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, id);
            
            rs=ps.executeQuery();
            
            while (rs.next()) {  
                
                e=new Employee(
                        rs.getInt("id"), 
                        rs.getString("name"), 
                        rs.getString("email"), 
                        rs.getString("cell")
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
