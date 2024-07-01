
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import util.Util;


public class StudentDao {
    static Student s=new Student();
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql="";
    
    public static int saveStudent(Student s){
    
        int status=0;
    sql="insert into student (name,address,email,cell)values(?,?,?,?)";
    
        try {
            ps=Util.getCon().prepareStatement(sql);
            
            ps.setString(1, s.getName());
            ps.setString(2, s.getAddress());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getCell());
            
            status=ps.executeUpdate();
            ps.close();
            Util.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
    
}
