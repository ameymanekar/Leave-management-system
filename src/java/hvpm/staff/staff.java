/**
 *
 * @author amey manekar
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
 * @author Asus
 */
public class staff {
    
    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

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
            private String gender;
            
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
    
private int sid;
private String name2;
private String province;
private String showtax;
private String leavereasion;
private String reasion;
private String DOBI;
private String DOBII;



public boolean leaveadd()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into leaveadd(name2,province,showtax,leavereasion,reasion,DOBI,DOBII) values(?,?,?,?,?,'"+DOBI+"','"+DOBII+"')";
            PreparedStatement smt=con.prepareStatement(msql);
            System.out.println(name2);
            smt.setString(1,name2);
            smt.setString(2,province);
            smt.setString(3,showtax);
            smt.setString(4,leavereasion);
            smt.setString(5,reasion);
            
           
  
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
  



public boolean leaveaddhod()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
            String msql="insert into leaveaddhod(name2,province,leavereasion,reasion,DOBI,DOBII) values(?,?,?,?,'"+DOBI+"','"+DOBII+"')";
            PreparedStatement smt=con.prepareStatement(msql);
            System.out.println(name2);
            smt.setString(1,name2);
            smt.setString(2,province);
            
            smt.setString(3,leavereasion);
            smt.setString(4,reasion);
            
           
  
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






public Vector list3(int max)
    {
        Vector vlist3=new Vector();
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
          String msql="select * from addhod ";
          Statement smt=con.createStatement();
          ResultSet rs=smt.executeQuery(msql);
          while(rs.next())
          {
              staff s=new staff();  
              s.setSid(rs.getInt("sid"));
              System.out.println(sid);
                System.out.println(DOBII);
                System.out.println(DOBI);
              s.setname2(rs.getString("name2"));
              s.setprovince(rs.getString("province"));
              s.setshowtax(rs.getString("showtax"));
                s.setleavereasion(rs.getString("leavereasion"));
                s.setreasion (rs.getString("reasion "));
              
                s.setDOBI(rs.getString("DOBI"));
              s.setDOBII(rs.getString("DOBII"));
            
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





























}
