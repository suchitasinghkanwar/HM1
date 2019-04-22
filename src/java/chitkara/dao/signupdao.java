/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chitkara.dao;

/**
 *
 * @author Suchita
 */
public class signupdao {
    
    
private String owner_name;
    private String vehicle_no;
    private String vehicle_type;
    private String seats;
    private String year;
    private String password;
    private String repassword;
    
    
    
    public String getowner_name(){
        return owner_name;
    }
    public void setowner_name(String owner_name)
    {
        this.owner_name=owner_name;
    }
    public String getvehicle_no(){
        return vehicle_no;
    }
        public void vehicle_no(String vehicle_no)
    {
        this.vehicle_no=vehicle_no;
    }
    
   
    public String getvehicle_type(){
        return vehicle_type;
    }
    public void setvehicle_type(String vehicle_type)
    {
        this.vehicle_type=vehicle_type;
    }
   
     public String getseats(){
        return seats;
    }
    public void setseats(String seats)
    {
        this.seats=seats;
    }
    
     public String getyear (){
        return year;
    }
    public void setyear(String year)
    {
        this.year=year;
    }
   
     public String getpassword(){
        return password;
    }
    public void setpassword(String password)
    {
        this.password=password;
    }
   
   
    public String getrepassword(){
        return repassword;
    }
    public void setrepassword(String repassword)
    {
        this.repassword=repassword;
    }
   
   
    


    
}

