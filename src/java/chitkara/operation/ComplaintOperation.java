/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chitkara.operation;

import chitkara.dao.Complaintdao;
import chitkara.db.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ComplaintOperation {
    static PreparedStatement stmt=null;
    static Connection con=null;
    static ResultSet rs=null;
    
     public static int complaint(Complaintdao c)
    {
        int i=0;
        try{
            con=DbConnection.getCon();
            stmt=con.prepareStatement("insert into c(first_name,last_name,complaint) values (?,?,?)");
            stmt.setString(1,c.getFirst_name());
            stmt.setString(2,c.getLast_name());
            stmt.setString(3,c.getcomplaint());
            
            i=stmt.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return i;
    }

}

