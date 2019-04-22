package chitkara.dao;

public class ProfileDao {
    private int id;
    private String first_name;
    private String last_name;
    private String uid;
    private String mobile_no;
    private String father_name;
    private String f_mob_no;
    private String branch;
    private String year;
    private String hostel;
    private String address;
    
    public int getId(){
        return id;
    }
    public void setId(int id)
    {
        this.id=id;
    }
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
    public String getUid() {
        return uid;
    }
    public void setUid(String uid)
    {
        this.uid=uid;
    }
    
    public String getMobile_no(){
        return mobile_no;
    }
    public void setMobile_no(String mobile_no){
        this.mobile_no=mobile_no;
    }
    public String getFather_name(){
        return father_name;
    }
    public void setFather_name(String father_name){
        this.father_name=father_name;
    }
    
    public String getF_mob_no(){
        return f_mob_no;
    }
    public void setF_mob_no(String f_mob_no){
        this.f_mob_no=f_mob_no;
    }
    
    public String getBranch(){
        return branch;
    }
    public void setBranch(String branch){
        this.branch=branch;
    }
    
    public String getYear(){
        return year;
    }
    public void setYear(String year){
        this.year=year;
    }
    
    public String getHostel(){
        return hostel;
    }
    public void setHostel(String hostel){
        this.hostel=hostel;
    }
    
    public String getAddress(){
        return address;
    }
    public void setAddress(String address){
        this.address=address;
    }
    
    
}
