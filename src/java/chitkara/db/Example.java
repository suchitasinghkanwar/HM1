package chitkara.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Example
{
	Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
	public void getData()
	{
		try{
			con=DbConnection.getCon();
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from user");	
		   while(rs.next())
                   {
System.out.println(rs.getInt("id")+" "+rs.getString("first_name")+" "+rs.getString("last_name")+" "+rs.getString("password"));
					
		}
                    }
		catch(Exception e){
				e.printStackTrace();
                }
	}
        
        public void addData()
        {
            try{
            con=DbConnection.getCon();
            stmt=con.createStatement();
            stmt.execute("insert into user(first_name,last_name,uid,password,user_type)values('suchita','singh',1611982012,'54321','User')");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
          }
        
        public void delData()
        {
            try{
            con=DbConnection.getCon();
            stmt=con.createStatement();
            stmt.execute("delete from user where id=2");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
          }
	//update
	public static void main(String[] args)
{
	Example obj=new Example();
        //obj.addData();
        //obj.getData();
        obj.delData();
        obj.getData();
}

}

