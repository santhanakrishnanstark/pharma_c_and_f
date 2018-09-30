
package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbConnect {
    
    public static Statement getConnection(){
     Statement st=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            st=con.createStatement();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return st;
    }
}
