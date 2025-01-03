
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DbUtil {
  
    private static Connection con=null;
    private static String url="jdbc:mysql://localhost:3307/crud98";
    private static String user="root";
    private static String password="";
    private static String driver="com.mysql.cj.jdbc.Driver";
    
    public static Connection getCon(){
    
        try {
            Class.forName(driver);
            con=DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbUtil.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DbUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    return con;
    }
    
    
}
