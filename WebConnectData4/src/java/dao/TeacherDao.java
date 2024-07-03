
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Teacher;
import util.DbUtil;


public class TeacherDao {
    Teacher t=new Teacher();
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql="";
    
    
    public static int saveTeacher(Teacher t){
    
    int status=0;
    
    sql="insert into teacher (name,address,city) values(?,?,?)";
    
        try {
            ps=DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, t.getName());
            ps.setString(2, t.getAddress());
            ps.setString(3, t.getCity());
            

            status=ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    return status;
    }
}
