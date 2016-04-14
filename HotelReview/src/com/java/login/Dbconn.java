
package com.java.login;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Dbconn {
 
    public Dbconn() throws SQLException {
        //initComponents();
           //Connection con;
        
    }
            public static Connection conn() throws SQLException, ClassNotFoundException{
                Connection con;
        Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/hotelreview","root","root");
         
        
       return(con);
    
}
           
}
