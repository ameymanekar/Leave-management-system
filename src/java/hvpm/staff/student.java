/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hvpm.staff;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author amey manekar
 */
public class student {
    
    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getdepartment() {
        return department;
    }

    public void setdepartment(String department) {
        this.department = department;
    }

    
   
    
    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    
    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }
    
   
     
      public String getgender() {
        return gender;
    }

    public void setgender(String gender) {
        this.gender = gender;
    }
    
  public String getpass() {
        return pass;
    }

    public void setpass(String pass) {
        this.pass = pass;
    }
   
    public String getuserid() {
        return userid;
    }

    public void setuserid(String userid) {
        this.userid = userid;
    }
    
    
    public String getpwd() {
        return pwd;
    }

    public void setpwd(String pwd) {
        this.pwd = pwd;
    }
    
     public String getuserrole() {
        return userrole;
    }

    public void setuserrole(String userrole) {
        this.userrole = userrole;
    }
            private String gender;
  
             public String getname2() {
        return name2;
    }

    public void setname2(String name2) {
        this.name2 = name2;
    }

    
    
     public String getprovince() {
        return province;
    }

    public void setprovince(String province) {
        this.province = province;
    }
           
            
            public String getshowtax() {
        return showtax;
    }

    public void setshowtax(String showtax) {
        this.showtax = showtax;
    }
        
    public String getleavereasion() {
        return leavereasion;
    }

    public void setleavereasion(String leavereasion) {
        this.leavereasion = leavereasion;
    }


public String getreasionn() {
        return reasion;
    }

    public void setreasion(String reasion) {
        this.reasion = reasion;
    }     
  
    
    public String getDOBI() {
        return DOBI;
    }

    public void setDOBI(String DOBI) {
        this.DOBI = DOBI;
    } 
    
    public String getDOBII() {
        return DOBII;
    }

    public void setDOBII(String DOBII) {
        this.DOBII = DOBII;
    } 
    
    public String getstatus2() {
        return status2;
    }

    public void setstatus2(String status2) {
        this.status2 = status2;
    } 
    
private int sid;
private String status2;
private String name2;
private String province;
private String showtax;
private String leavereasion;
private String reasion;
private String DOBI;
private String DOBII;


private String name;
private String pwd;
private String userrole;
private String department;
private String pass;
private String rpass;
private String DOB;
private String email; 
 private String  userid;
private String contactno;





    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }
    
    
    public Vector list(int max)
    {
        Vector vlist=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addstaff order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              s.setContactno(rs.getString("contactno"));
             
              s.setdepartment(rs.getString("department"));
              s.setDOB(rs.getString("DOB"));
              s.setemail(rs.getString("email"));
             
              s.setgender(rs.getString("gender"));
            
              vlist.add(s);
              
          }
          con.close();
          return vlist;
        }
        catch(Exception er)
        {
            
        }
        return vlist;
    }
    
    
    public Vector list2(int max)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addhod order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              s.setContactno(rs.getString("contactno"));
             
              s.setdepartment(rs.getString("department"));
              s.setDOB(rs.getString("DOB"));
              s.setemail(rs.getString("email"));
             
              s.setgender(rs.getString("gender"));
            
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    
     public Vector list3(int max)
    {
        Vector vlist3=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addprincipal order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              s.setContactno(rs.getString("contactno"));
             
              s.setDOB(rs.getString("DOB"));
              s.setemail(rs.getString("email"));
             
              s.setgender(rs.getString("gender"));
            
              vlist3.add(s);
              
          }
          con.close();
          return vlist3;
        }
        catch(Exception er)
        {
            
        }
        return vlist3;
    }
     
     public Vector list44(String pattern)
    {
        Vector vlist44=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
         
          String msql="select * from leaveadd where name2 like '"+pattern+"%' order by sid desc"  ;
          //"select * from leaveadd order by sid desc"
          
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setname2(rs.getString("name2"));
             s.setprovince(rs.getString("province"));
             s.setshowtax(rs.getString("showtax"));
             s.setleavereasion(rs.getString("leavereasion"));
             s.setDOBII(rs.getString("DOBII"));
              s.setDOBI(rs.getString("DOBI"));
              s.setstatus2(rs.getString("status2"));
            
              vlist44.add(s);
              
          }
          con.close();
          return vlist44;
        }
        catch(Exception er)
        {
            
        }
        return vlist44;
    }
     
     public boolean reqstatus()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update leaveadd set status2=? where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
           
            System.out.println(status2);
            smt.setString(1,status2);
            
            
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
    
     public boolean reqstatusprincipal()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update leaveaddhod set status2=? where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
           
            System.out.println(status2);
            smt.setString(1,status2);
            
            
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
     
     
    public boolean staffinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into addstaff(name,email,contactno,gender,department,DOB) values(?,?,?,?,?,'"+DOB+"')";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
            smt.setString(5,department);
           
  
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    public boolean hodinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into addhod(name,email,contactno,gender,department,DOB) values(?,?,?,?,?,'"+DOB+"')";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
            smt.setString(5,department);
           
  
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    public boolean principalinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into addprincipal(name,email,contactno,gender,DOB) values(?,?,?,?,'"+DOB+"')";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,contactno);
            smt.setString(4, gender);
           
  
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    public boolean passinsert()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into loginmaster2(userrole,pwd,userid,department) values(?,?,?,?)";
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,pass);
            smt.setString(3,name);
            smt.setString(4,department);
            
          
           
  
            smt.executeUpdate();
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    public Vector list(String pattern)
    {
        Vector vlist=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addstaff where name like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              s.setContactno(rs.getString("contactno"));
             
              s.setDOB(rs.getString("DOB"));
              s.setemail(rs.getString("email"));
             s.setdepartment(rs.getString("department"));
              s.setgender(rs.getString("gender"));
              vlist.add(s);
              
          }
          con.close();
          return vlist;
        }
        catch(Exception er)
        {
            
        }
        return vlist;
    }
    
    public Vector list2(String pattern)
    {
        Vector vlist2=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addhod where name like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              s.setContactno(rs.getString("contactno"));
             
              s.setDOB(rs.getString("DOB"));
              s.setemail(rs.getString("email"));
             s.setdepartment(rs.getString("department"));
              s.setgender(rs.getString("gender"));
              vlist2.add(s);
              
          }
          con.close();
          return vlist2;
        }
        catch(Exception er)
        {
            
        }
        return vlist2;
    }
    public Vector list3(String pattern)
    {
        Vector vlist3=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addprincipal where name like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setName(rs.getString("name"));
              s.setContactno(rs.getString("contactno"));
             
              s.setDOB(rs.getString("DOB"));
              s.setemail(rs.getString("email"));
           
              s.setgender(rs.getString("gender"));
              vlist3.add(s);
              
          }
          con.close();
          return vlist3;
        }
        catch(Exception er)
        {
            
        }
        return vlist3;
    }
   
    public boolean staffdelete()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="DELETE FROM addstaff WHERE sid= "+sid+"";
            PreparedStatement smt=con.prepareStatement(msql);
          
             smt.executeUpdate();
            
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    public boolean hoddelete()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="DELETE FROM addhod WHERE sid= "+sid+"";
            PreparedStatement smt=con.prepareStatement(msql);
          
             smt.executeUpdate();
            
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
    public boolean principaldelete()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="DELETE FROM addprincipal WHERE sid= "+sid+"";
            PreparedStatement smt=con.prepareStatement(msql);
          
             smt.executeUpdate();
            
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
          er.printStackTrace();  
       }
        return false;
    }
    
   public boolean updatestaff()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update addstaff set name=?,gender=?,department=?,DOB=?,contactno=?,email=? where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,gender);
            smt.setString(3,department);
            smt.setString(4,DOB);
            smt.setString(5,contactno);
            smt.setString(6,email);
            
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
 public boolean updatehod()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update addhod set name=?,gender=?,department=?,DOB=?,contactno=?,email=? where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,gender);
            smt.setString(3,department);
            smt.setString(4,DOB);
            smt.setString(5,contactno);
            smt.setString(6,email);
            
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
    public boolean updateprincipal()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update addprincipal set name=?,email=?,gender=?,DOB=?,contactno=? where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,gender);
            
            smt.setString(4,DOB);
            smt.setString(5,contactno);
            
            
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
    
    public Vector list4(String pattern)
    {
        Vector vlist4=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from loginmaster2 where userid like '"+pattern+"%' order by sid desc"  ;
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setpwd(rs.getString("pwd"));
              s.setuserid(rs.getString("userid"));
              
              vlist4.add(s);
              
          }
          con.close();
          return vlist4;
        }
        catch(Exception er)
        {
            
        }
        return vlist4;
    }
    public boolean updatepass()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="Update loginmaster2 set userid=?,pwd=?,userrole=? where sid=" +sid;
            PreparedStatement smt=con.prepareStatement(msql);
            smt.setString(1,userid);
            smt.setString(2,pwd);
            smt.setString(3,userrole);
           
            
            
            
            smt.executeUpdate();
            
            con.close();
            return true;
        }
       catch(ClassNotFoundException | SQLException er) 
       {
         er.printStackTrace();  
       }
        return false;
    }
    public Vector list5(String pattern)
    {
        Vector vlist5=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
         
          
          String msql="select * from leaveaddhod where name2 like '"+pattern+"%' order by sid desc";
          
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setname2(rs.getString("name2"));
             s.setprovince(rs.getString("province"));
           
             s.setleavereasion(rs.getString("leavereasion"));
             s.setDOBII(rs.getString("DOBII"));
              s.setDOBI(rs.getString("DOBI"));
              s.setstatus2(rs.getString("status2"));
            
              vlist5.add(s);
              
          }
          con.close();
          return vlist5;
        }
        catch(Exception er)
        {
            
        }
        return vlist5;
    }

    
    
    public Vector list55(String pattern)
    {
        Vector vlist55=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
         
           //String msql="select * from leaveadd order by sid desc"  ;
          String msql="select * from leaveadd where province like '"+pattern+"%' order by sid desc";
          
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setname2(rs.getString("name2"));
             s.setprovince(rs.getString("province"));
             s.setshowtax(rs.getString("showtax"));
             s.setleavereasion(rs.getString("leavereasion"));
             s.setDOBII(rs.getString("DOBII"));
              s.setDOBI(rs.getString("DOBI"));
              s.setstatus2(rs.getString("status2"));
             
            
              vlist55.add(s);
              
          }
          con.close();
          return vlist55;
        }
        catch(Exception er)
        {
            
        }
        return vlist55;
    }

    
    
    
    private static class session {

        private static void setAttribute(String userid, String userid0) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        public session() {
        }
    }
    
    public Vector list6(int max)
    {
        Vector vlist6=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
         
          
      
          String msql="select * from leaveaddhod order by sid desc";
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              student s=new student();
              s.setSid(rs.getInt("sid"));
              s.setname2(rs.getString("name2"));
             s.setprovince(rs.getString("province"));
             
             s.setleavereasion(rs.getString("leavereasion"));
             s.setDOBII(rs.getString("DOBII"));
              s.setDOBI(rs.getString("DOBI"));
              s.setstatus2(rs.getString("status2"));
            
              vlist6.add(s);
              
          }
          con.close();
          return vlist6;
        }
        catch(Exception er)
        {
            
        }
        return vlist6;
    }
    
    
    
    
    
    
    
    
    
}
