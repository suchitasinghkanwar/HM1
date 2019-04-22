/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chitkara.operation;

import chitkara.dao.UserDao;
import chitkara.dao.signupdao;
import chitkara.db.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Suchita
 */
public class signupOperation {
    static PreparedStatement stmt=null;
    static Connection con=null;
    static ResultSet rs=null;
    
    public static signupdao signup(signupdao user)
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from signup where owner_name=? and vehicle_no=? and vehicle_type=? and seats=? and year=? and password=? and repassword=?");
            stmt.setString(1,user.getUid());
            stmt.setString(2,user.getPassword());
            rs=stmt.executeQuery();
            
            if(rs.next()){
                //System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
                user.setFirst_name(rs.getString("first_name"));
                user.setLast_name(rs.getString("last_name"));
                user.setId(rs.getInt("id"));
                user.setUser_type(rs.getString("user_type"));
                return user;
            }
            else
                user=null;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
    
    public static int addStudent(UserDao user)
    {
        int i=0;
        try{
            con=DbConnection.getCon();
            stmt=con.prepareStatement("insert into user(first_name,last_name,uid,password,user_type) values (?,?,?,?,?)");
            stmt.setString(1,user.getFirst_name());
            stmt.setString(2,user.getLast_name());
            stmt.setString(3,user.getUid());
            stmt.setString(4,user.getPassword());
            stmt.setString(5,user.getUser_type());
            i=stmt.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return i;
    }    
}
