<%-- 
    Document   : viewaddmission
    Created on : Feb 25, 2018, 1:50:41 PM
    Author     : Asus
--%>
<%@page import="hvpm.staff.student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
   body {
       background-color: #cccccc;
}  
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      </form>
            <hr>
<center><h1>STAFF</h1></center>
            <table style="width:100%"  border="1"  >
             <tr>
                    <th>Name</th>
                     <th>email</th>
                    <th>Contact No</th>
                    <th>Date of Birth</th>
                   <th> Department</th>
                    
                    <th>Gender</th>
                   
                </tr>
                
                <%
                student stud=new student();
                Vector vlist=stud.list(30);
                for(int i=0;i<vlist.size();i++)
            {
                student s=(student)vlist.get(i);
                %>
                <tr> 
                    <td><%=s.getName()%></td><td><%=s.getemail()%></td>
                    
                    <td><%=s.getContactno()%></td>
                    <td><%=s.getDOB()%></td><td><%=s.getdepartment()%></td>
                  
                    <td><%=s.getgender()%></td>
                    
                       </tr>
                <%  
            }
             %>
            </table>
            <hr>
            <center><h1>HOD </h1></center>
            <table style="width:100%"  border="1"  >
             <tr>
                    <th>Name</th>
                     <th>email</th>
                    <th>Contact No</th>
                    <th>Date of Birth</th>
                   <th> Department</th>
                    
                    <th>Gender</th>
                   
                </tr>
                
                <%
                student stud2=new student();
                Vector vlist2=stud2.list2(20);
                for(int i=0;i<vlist2.size();i++)
            {
                student s=(student)vlist2.get(i);
                %>
                <tr> 
                    <td><%=s.getName()%></td><td><%=s.getemail()%></td>
                    
                    <td><%=s.getContactno()%></td>
                    <td><%=s.getDOB()%></td><td><%=s.getdepartment()%></td>
                  
                    <td><%=s.getgender()%></td>
                    
                       </tr>
                <%  
            }
             %>
            </table>
            <hr>
            
            <center><h1>PRINCIPAL </h1></center>
            <table style="width:100%"  border="1"  >
             <tr>
                    <th>Name</th>
                     <th>email</th>
                    <th>Contact No</th>
                    <th>Date of Birth</th>
                  
                    
                    <th>Gender</th>
                   
                </tr>
                
                <%
                student stud3=new student();
                Vector vlist3=stud3.list3(30);
                for(int i=0;i<vlist3.size();i++)
            {
                student s=(student)vlist3.get(i);
                %>
                <tr> 
                    <td><%=s.getName()%></td><td><%=s.getemail()%></td>
                    
                    <td><%=s.getContactno()%></td>
                    <td><%=s.getDOB()%></td>
                  
                    <td><%=s.getgender()%></td>
                    
                       </tr>
                <%  
            }
             %>
            </table>
            <hr>
    </body>
</html>

