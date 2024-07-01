
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Util {
    
  private static String url = "jdbc:mysql://localhost:3306/dbcrude2";
    private static String user = "root";
    private static String password = "1234";

    private static String driver = "com.mysql.cj.jdbc.Driver";

    private static Connection con= null;  
    
     public static Connection getCon(){
     
      try {
          Class.forName(driver);
              con = DriverManager.getConnection(url, user, password);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(Util.class.getName()).log(Level.SEVERE, null, ex);
      } catch (SQLException ex) {
          Logger.getLogger(Util.class.getName()).log(Level.SEVERE, null, ex);
      }
     return con;
     }
    
}
