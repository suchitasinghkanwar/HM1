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
public class Complaintdao {
    private String first_name;
    private String last_name;
    private String complaint;
    
    
    
    public String getFirst_name(){
        return first_name;
    }
    public void setFirst_name(String first_name)
    {
        this.first_name=first_name;
    }
    public String getLast_name(){
        return last_name;
    }
        public void setLast_name(String last_name)
    {
        this.last_name=last_name;
    }
    
   
    public String getcomplaint(){
        return complaint;
    }
    public void setcomplaint(String complaint)
    {
        this.complaint=complaint;
    }
   
    


    
}
